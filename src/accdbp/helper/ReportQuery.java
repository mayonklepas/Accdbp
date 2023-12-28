/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accdbp.helper;

import accdbp.entity.BookPrint;
import accdbp.entity.BookPrintDetail;
import accdbp.entity.CodeNameAmount;
import accdbp.entity.JournalRegister;
import accdbp.entity.Ledger;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 *
 * @author mulyadi
 */
public class ReportQuery {

    public List<CodeNameAmount> getPlBl(Date dateFrom, Date dateTo, int accGroup1, int accGroup2) {

        List<CodeNameAmount> result = new ArrayList<>();

        List<Map<String, Object>> getAccount = new DatabaseViews().getAccount();
        List<Map<String, Object>> getBalanceSheet = new DatabaseViews().getBalanceSetByYear(Integer.parseInt(Staticvar.year_periode));

        List<Map<String, Object>> lsBalanceSheet = getBalanceSheet.stream().filter(d -> {
            Date dtDb = new Date(((java.sql.Date) d.get("DATE_TRANS")).getTime());
            if (dtDb.getTime() >= dateFrom.getTime() && dtDb.getTime() <= dateTo.getTime()) {
                return true;
            }
            return false;
        }).sorted((d1, d2) -> {
            String id1 = d1.get("ID").toString();
            String id2 = d2.get("ID").toString();
            return id2.compareTo(id1);
        }).collect(Collectors.toList());;

        if (lsBalanceSheet.size() == 0) {
            return result;
        }

        long countBalanceSheetByPeriode = lsBalanceSheet.stream().count();

        Map<String, Object> firstDataBalanceSheet = lsBalanceSheet.get(0);

        Date firstDateBalanceSheet = new Date(((Date) firstDataBalanceSheet.get("DATE_TRANS")).getTime());

        for (Map<String, Object> acc : getAccount) {

            int accGroup = (int) acc.get("ACC_GROUP");
            if (accGroup == accGroup1 || accGroup == accGroup2) {
                String accCode = acc.get("ACC_CODE").toString();
                String accName = acc.get("ACC_NAME").toString();
                double amount = (double) acc.get("ACC_OPENING_BALANCE");
                int isBookPrint = (int) acc.get("ISBOOKPRINT");

                if (countBalanceSheetByPeriode != 0) {
                    if (isBookPrint == 0) {
                        if (firstDateBalanceSheet.getTime() <= dateTo.getTime()) {
                            amount = (double) acc.get("ACC_CURRENT_BALANCE");
                        } else {
                            amount = getSaldoByAccount(lsBalanceSheet, accCode, false);
                        }
                    } else {
                        if (firstDateBalanceSheet.getTime() <= dateTo.getTime()) {
                            amount = (double) acc.get("ACC_CURRENT_BALANCE");
                        } else {
                            amount = getSaldoByAccount(lsBalanceSheet, accCode, true);
                        }
                    }
                }

                result.add(new CodeNameAmount(accCode, accName, amount));

            }

        }

        return result.stream().sorted((d1, d2) -> d1.getCode().compareTo(d2.getCode())).collect(Collectors.toList());
    }

    public List<CodeNameAmount> getProfitLoss(Date dateFrom, Date dateTo) {
        return getPlBl(dateFrom, dateTo, 1, 3);
    }

    public List<CodeNameAmount> getBalanceSheet(Date dateFrom, Date dateTo) {
        return getPlBl(dateFrom, dateTo, 0, 2);
    }

    public List<BookPrint> getBookPrint(Date dateFrom, Date dateTo, int pAccType, String pAccCode) {

        List<BookPrint> result = new ArrayList<>();

        List<Map<String, Object>> getAccount = new DatabaseViews().getAccount();
        List<Map<String, Object>> getBookPrint = new DatabaseViews().getBookPrintByYear(Integer.parseInt(Staticvar.year_periode));

        List<Map<String, Object>> lsBookPrint = getBookPrint.stream().filter(d -> {
            Date dtDb = new Date(((java.sql.Date) d.get("DATE_TRANS")).getTime());
            if (dtDb.getTime() >= dateFrom.getTime() && dtDb.getTime() <= dateTo.getTime()) {
                return true;
            }
            return false;
        }).sorted((d1, d2) -> {
            String id1 = d1.get("ID").toString();
            String id2 = d2.get("ID").toString();
            return id2.compareTo(id1);
        }).collect(Collectors.toList());;

        if (lsBookPrint.size() == 0) {
            return result;
        }

        for (Map<String, Object> acc : getAccount) {

            String accCode = acc.get("ACC_CODE").toString();
            String accName = acc.get("ACC_NAME").toString();
            double amount = (double) acc.get("ACC_CURRENT_BALANCE");
            int accType = (int) acc.get("ACC_TYPE");
            int isBookPrint = (int) acc.get("ISBOOKPRINT");

            if (isBookPrint == 1 && accType == pAccType && accCode.equals(pAccCode)) {

                long countBookPrintByAccCode = lsBookPrint.stream().filter(d -> {
                    String accCodeDb = d.get("ACC_CODE").toString();
                    if (accCode.equals(accCodeDb)) {
                        return true;
                    }
                    return false;
                }).count();

                if (countBookPrintByAccCode == 0) {
                    amount = lsBookPrint.stream().filter(d -> {
                        String accCodeMaster = d.get("ACC_CODE_MASTER").toString();
                        if (accCodeMaster.equals(accCode)) {
                            return true;
                        }
                        return false;
                    }).map(d -> {
                        double debit = (double) d.get("DEBIT");
                        double kredit = (double) d.get("KREDIT");
                        double saldoMaster = (double) d.get("SALDO_MASTER");
                        if (debit == 0) {
                            return saldoMaster + kredit;
                        }
                        return saldoMaster - debit;
                    }).findFirst().get();
                }

            } else {
                continue;
            }

            List<BookPrintDetail> resultDetail = lsBookPrint.stream().filter(d -> {
                String accCodeMaster = d.get("ACC_CODE_MASTER").toString();
                if (accCodeMaster.equals(accCode)) {
                    return true;
                }
                return false;
            }).map(d -> {
                String id = d.get("ID").toString();
                Date dateTrans = new Date(((java.sql.Date) d.get("DATE_TRANS")).getTime());
                String docNo = d.get("DOC_NO").toString();
                String refNo = d.get("REF_NO").toString();
                String docType = d.get("DOC_TYPE").toString();
                double debit = (double) d.get("DEBIT");
                double credit = (double) d.get("KREDIT");
                double saldoMaster = (double) d.get("SALDO_MASTER");
                String description = d.get("DESCRIPTION").toString();

                return new BookPrintDetail(id, dateTrans, docNo, refNo, docType, accCode, debit, credit, saldoMaster, description);
            }).collect(Collectors.toList());;

            result.add(new BookPrint(accCode, accName, amount, resultDetail));
        }

        return result.stream().sorted((d1, d2) -> d1.getCode().compareTo(d2.getCode())).collect(Collectors.toList());
    }

    public List<CodeNameAmount> getOnlineTrialBalance(Date dateFrom, Date dateTo) {

        List<CodeNameAmount> result = new ArrayList<>();

        List<Map<String, Object>> getAccount = new DatabaseViews().getAccount();
        List<Map<String, Object>> getBalanceSheet = new DatabaseViews().getBalanceSetByYear(Integer.parseInt(Staticvar.year_periode));

        List<Map<String, Object>> lsBalanceSheet = getBalanceSheet.stream().filter(d -> {
            Date dtDb = new Date(((Date) d.get("DATE_TRANS")).getTime());
            if (dtDb.getTime() >= dateFrom.getTime() && dtDb.getTime() <= dateTo.getTime()) {
                return true;
            }
            return false;
        }).sorted((d1, d2) -> {
            String id1 = d1.get("ID").toString();
            String id2 = d2.get("ID").toString();
            return id2.compareTo(id1);
        }).collect(Collectors.toList());;

        long countBalanceSheetByPeriode = lsBalanceSheet.stream().count();

        if (lsBalanceSheet.size() == 0) {
            return result;
        }

        Map<String, Object> firstDataBalanceSheet = lsBalanceSheet.get(0);
        Date firstDateBalanceSheet = new Date(((Date) firstDataBalanceSheet.get("DATE_TRANS")).getTime());

        for (Map<String, Object> acc : getAccount) {

            String accCode = acc.get("ACC_CODE").toString();
            String accName = acc.get("ACC_NAME").toString();
            double amount = (double) acc.get("ACC_OPENING_BALANCE");
            int isBookPrint = (int) acc.get("ISBOOKPRINT");

            if (countBalanceSheetByPeriode != 0) {
                if (isBookPrint == 0) {
                    if (firstDateBalanceSheet.getTime() <= dateTo.getTime()) {
                        amount = (double) acc.get("ACC_CURRENT_BALANCE");
                    } else {
                        amount = getSaldoByAccount(lsBalanceSheet, accCode, false);

                    }
                } else {
                    if (firstDateBalanceSheet.getTime() <= dateTo.getTime()) {
                        amount = (double) acc.get("ACC_CURRENT_BALANCE");
                    } else {
                        amount = getSaldoByAccount(lsBalanceSheet, accCode, true);
                    }
                }
            }

            result.add(new CodeNameAmount(accCode, accName, amount));

        }

        return result.stream().sorted((d1, d2) -> d1.getCode().compareTo(d2.getCode())).collect(Collectors.toList());

    }

    public List<CodeNameAmount> getOnlineAccountBalance(Date dateFrom, Date dateTo) {

        List<CodeNameAmount> result = new ArrayList<>();

        List<Map<String, Object>> getAccount = new DatabaseViews().getAccount();
        List<Map<String, Object>> getBalanceSheet = new DatabaseViews().getBalanceSetByYear(Integer.parseInt(Staticvar.year_periode));

        List<Map<String, Object>> lsBalanceSheet = getBalanceSheet.stream().filter(d -> {
            Date dtDb = new Date(((Date) d.get("DATE_TRANS")).getTime());
            if (dtDb.getTime() >= dateFrom.getTime() && dtDb.getTime() <= dateTo.getTime()) {
                return true;
            }
            return false;
        }).sorted((d1, d2) -> {
            String id1 = d1.get("ID").toString();
            String id2 = d2.get("ID").toString();
            return id2.compareTo(id1);
        }).collect(Collectors.toList());;

        long countBalanceSheetByPeriode = lsBalanceSheet.stream().count();

        if (lsBalanceSheet.size() == 0) {
            return result;
        }

        Map<String, Object> firstDataBalanceSheet = lsBalanceSheet.get(0);
        Date firstDateBalanceSheet = new Date(((Date) firstDataBalanceSheet.get("DATE_TRANS")).getTime());

        for (Map<String, Object> acc : getAccount) {

            String accCode = acc.get("ACC_CODE").toString();
            String accName = acc.get("ACC_NAME").toString();
            double amount = (double) acc.get("ACC_OPENING_BALANCE");
            int isBookPrint = (int) acc.get("ISBOOKPRINT");

            if (countBalanceSheetByPeriode != 0) {
                if (isBookPrint == 0) {
                    if (firstDateBalanceSheet.getTime() <= dateTo.getTime()) {
                        amount = (double) acc.get("ACC_CURRENT_BALANCE");
                    } else {
                        amount = getSaldoByAccount(lsBalanceSheet, accCode, false);
                    }
                } else {
                    if (firstDateBalanceSheet.getTime() <= dateTo.getTime()) {
                        amount = (double) acc.get("ACC_CURRENT_BALANCE");
                    } else {
                        amount = getSaldoByAccount(lsBalanceSheet, accCode, true);
                    }
                }
            }

            result.add(new CodeNameAmount(accCode, accName, amount));

        }

        return result.stream().sorted((d1, d2) -> d1.getCode().compareTo(d2.getCode())).collect(Collectors.toList());

    }

    public List<JournalRegister> getJournalRegister(Date dateFrom, Date dateTo) {

        List<JournalRegister> result = new ArrayList<>();

        List<Map<String, Object>> lsAccount = new DatabaseViews().getAccount().stream().filter(d -> {
            int accGroup = (int) d.get("ACC_GROUP");
            if (accGroup == 1 || accGroup == 3) {
                return true;
            }
            return false;
        }).collect(Collectors.toList());;
        List<Map<String, Object>> getAllTrans = new DatabaseViews().getAllTransByYear(Integer.parseInt(Staticvar.year_periode));

        List<Map<String, Object>> lsAllTrans = getAllTrans.stream().filter(d -> {
            Date dtDb = new Date(((java.sql.Date) d.get("DATE_TRANS")).getTime());
            if (dtDb.getTime() >= dateFrom.getTime() && dtDb.getTime() <= dateTo.getTime()) {
                return true;
            }
            return false;
        }).sorted((d1, d2) -> {
            String id1 = d1.get("ID").toString();
            String id2 = d2.get("ID").toString();
            return id2.compareTo(id1);
        }).collect(Collectors.toList());;

        for (Map<String, Object> acc : lsAccount) {
            String accCode = acc.get("ACC_CODE").toString();
            String accName = acc.get("ACC_NAME").toString();
            int isBookPrint = (int) acc.get("ISBOOKPRINT");
            double debit = 0;
            double credit = 0;

            double res1 = 0;
            if (isBookPrint == 0) {
                res1 = getSaldoByAccount(lsAllTrans, accCode, false);
            } else {
                res1 = getSaldoByAccount(lsAllTrans, accCode, true);
            }

            if (res1 > 0) {
                debit = 0;
            } else {
                if (isBookPrint == 0) {
                    debit = getSaldoByAccount(lsAllTrans, accCode, false, true, false);
                } else {
                    debit = getSaldoByAccount(lsAllTrans, accCode, true, true, false);
                }

            }

            if (isBookPrint == 0) {
                credit = getSaldoByAccount(lsAllTrans, accCode, false, true, true);
            } else {
                credit = getSaldoByAccount(lsAllTrans, accCode, true, true, true);
            }

            result.add(new JournalRegister(accCode, accName, debit, credit));

        }

        return result.stream().sorted((d1, d2) -> d1.getCode().compareTo(d2.getCode())).collect(Collectors.toList());

    }

    public List<Ledger> getLedgers(Date dateFrom, Date dateTo, String pAccCode) {
        
         List<CodeNameAmount> result = new ArrayList<>();

        List<Map<String, Object>> getAccount = new DatabaseViews().getAccount();
        List<Map<String, Object>> getLedger = new DatabaseViews().getDetailLedgerByYear(Integer.parseInt(Staticvar.year_periode));
        
        List<Map<String, Object>> lsLedger = getLedger.stream().filter(d -> {
            Date dtDb = new Date(((Date) d.get("DATE_TRANS")).getTime());
            if (dtDb.getTime() >= dateFrom.getTime() && dtDb.getTime() <= dateTo.getTime()) {
                return true;
            }
            return false;
        }).sorted((d1, d2) -> {
            String id1 = d1.get("ID").toString();
            String id2 = d2.get("ID").toString();
            return id1.compareTo(id2);
        }).collect(Collectors.toList());;
        return null;
    }

    private double getSaldoByAccount(List<Map<String, Object>> data, String accCode, boolean isMaster, boolean withOut0saldo, boolean isGreater) {
        try {
            String accCodeKey = "ACC_CODE";
            String saldoKey = "SALDO";
            if (isMaster) {
                accCodeKey = "ACC_CODE_MASTER";
                saldoKey = "SALDO_MASTER";
            }

            final String accCodeKeyFinale = accCodeKey;
            final String saldoKeyFinale = saldoKey;

            Optional<Map<String, Object>> resMap = data.stream().filter(d -> {
                Date dtDb = new Date(((Date) d.get("DATE_TRANS")).getTime());
                String accCodeIn = d.get(accCodeKeyFinale).toString();
                if (accCodeIn.equals(accCode)) {
                    if (withOut0saldo) {
                        double saldo = (double) d.get(saldoKeyFinale);
                        if (isGreater) {
                            if (saldo > 0) {
                                return true;
                            }
                        } else {
                            if (saldo < 0) {
                                return true;
                            }
                        }

                        return false;

                    }
                    return true;

                }
                return false;
            }).findFirst();

            if (!resMap.isPresent()) {
                return 0;
            }

            double result = (double) resMap.get().get(saldoKeyFinale);

            return result;
        } catch (Exception ex) {
            Logger.getLogger("ReportQuery").log(Level.SEVERE, ex.getLocalizedMessage(), ex);
        }

        return 0;
    }

    private double getSaldoByAccount(List<Map<String, Object>> data, String accCode, boolean isMaster) {
        try {
            String accCodeKey = "ACC_CODE";
            String saldoKey = "SALDO";
            if (isMaster) {
                accCodeKey = "ACC_CODE_MASTER";
                saldoKey = "SALDO_MASTER";
            }

            final String accCodeKeyFinale = accCodeKey;
            final String saldoKeyFinale = saldoKey;

            Optional<Map<String, Object>> resMap = data.stream().filter(d -> {
                String accCodeIn = d.get(accCodeKeyFinale).toString();
                if (accCodeIn.equals(accCode)) {
                    return true;
                }
                return false;
            }).findFirst();

            if (!resMap.isPresent()) {
                return 0;
            }

            double result = (double) resMap.get().get(saldoKeyFinale);

            return result;
        } catch (Exception ex) {
            Logger.getLogger("ReportQuery").log(Level.SEVERE, ex.getLocalizedMessage(), ex);
        }

        return 0;
    }

}
