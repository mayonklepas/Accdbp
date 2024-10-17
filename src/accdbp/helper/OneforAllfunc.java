/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.helper;

import accdbp.view.CConfirmDialog;
import accdbp.view.CConfirmDialogwithpass;
import accdbp.view.CMessageDialog;
import accdbp.view.Home;
import java.awt.Dialog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import javax.swing.JDialog;
import javax.swing.JTable;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author Minami
 */
public class OneforAllfunc {

    public static String datetodb(Date ref) {
        String sdate = new SimpleDateFormat("yyyy-MM-dd").format(ref);
        return sdate;
    }

    public static String dateviewtable(Date ref) {
        String sdate = new SimpleDateFormat("dd/MM/yyyy").format(ref);
        return sdate;
    }

    public static Date datefromdb(String ref) {
        Date ddate = null;
        try {
            ddate = new SimpleDateFormat("yyyy-MM-dd").parse(ref);
        } catch (ParseException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ddate;
    }

    public static String getdate(Date Ref) {
        String date = new SimpleDateFormat("dd").format(Ref);
        return date;
    }

    public static String getmonth(Date Ref) {
        String month = new SimpleDateFormat("MM").format(Ref);
        return month;
    }

    public static String getyear(Date Ref) {
        String year = new SimpleDateFormat("yyyy").format(Ref);
        return year;
    }

    public static String getyear2digit(Date Ref) {
        String year = new SimpleDateFormat("yy").format(Ref);
        return year;
    }

    public static double doubleformat(String ref) {
        double res = 0;
        try {
            res = Double.parseDouble(ref.replace(".", ""));
        } catch (Exception e) {
            res = 0;
        }
        return res;
    }

    public static int intformat(String ref) {
        int res = 0;
        try {
            res = Integer.parseInt(ref);
        } catch (Exception e) {
            res = 0;
        }
        return res;
    }

    public static String nfcurrency(double ref) {
        String res = "0";
        try {
            Locale myIndonesianLocale = new Locale("in", "ID");
            NumberFormat nf = NumberFormat.getCurrencyInstance(myIndonesianLocale);
            res = nf.format(ref);
        } catch (Exception e) {
            res = "0";
        }

        return res;
    }

    public static String nf(double ref) {
        String res = "0";
        try {
            Locale myIndonesianLocale = new Locale("in", "ID");
            NumberFormat nf = NumberFormat.getInstance(myIndonesianLocale);
            res = nf.format(ref);
        } catch (Exception e) {
            res = "0";
        }

        return res;
    }

    public static void info(String header, String detail) {
        JDialog jd = new JDialog(new Home());
        jd.setResizable(false);
        jd.add(new CMessageDialog(header, detail));
        jd.pack();
        jd.setTitle("Information");
        jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
        jd.setLocationRelativeTo(null);
        jd.setVisible(true);
    }

    public static void confirm(String header, String detail) {
        JDialog jd = new JDialog(new Home());
        jd.setResizable(false);
        jd.add(new CConfirmDialog(header, detail));
        jd.pack();
        jd.setTitle("Confirmation");
        jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
        jd.setLocationRelativeTo(null);
        jd.setVisible(true);
    }

    public static void confirmwitpass(String header, String detail) {
        JDialog jd = new JDialog(new Home());
        jd.setResizable(false);
        jd.add(new CConfirmDialogwithpass(header, detail));
        jd.pack();
        jd.setTitle("Confirmation");
        jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
        jd.setLocationRelativeTo(null);
        jd.setVisible(true);
    }

    public static boolean accountcheck(String id) {
        boolean resl = false;
        int counrow = 0;
        Dbconnection dcon = new Dbconnection();
        try {
            PreparedStatement pres = dcon.cn().prepareStatement("SELECT COUNT(ACC_CODE) AS RESL FROM TB_ACC WHERE ACC_CODE=?");
            pres.setString(1, id);
            ResultSet res = pres.executeQuery();
            while (res.next()) {
                counrow = res.getInt("RESL");
            }
            if (counrow > 0) {
                resl = true;
            } else {
                resl = false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resl;
    }

    public static String shahash256(String ref) {
        String resfinal = "";
        try {
            MessageDigest msd = MessageDigest.getInstance("SHA-256");
            byte[] encodehash = msd.digest(ref.getBytes(StandardCharsets.UTF_8));
            BigInteger no = new BigInteger(1, encodehash);
            String reshash = no.toString(16);
            while (reshash.length() < 32) {
                reshash = "0" + reshash;
            }
            resfinal = reshash;
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return resfinal;
    }

    public static String getautodocno(String prefix, String table, String column) {
        String result = "";
        Dbconnection cn = new Dbconnection();
        try {
            String query = "SELECT " + column + " FROM " + table + " "
                    + "WHERE " + column + " LIKE SUBSTRING ?  ORDER BY CAST(" + column + " AS integer) DESC FETCH FIRST 1 ROWS ONLY";
            PreparedStatement pres = cn.cn().prepareStatement(query);
            pres.setString(1, "%" + prefix + "%");
            ResultSet res = pres.executeQuery();
            String rawresult = "";
            while (res.next()) {
                rawresult = res.getString(column);
            }
            if (!rawresult.equals("")) {
                int panjangprefix = rawresult.length() - 6;
                if (rawresult.substring(0, panjangprefix).equals(prefix)) {
                    int intresult = Integer.parseInt(rawresult) + 1;
                    result = String.valueOf(intresult);
                } else {
                    result = prefix + "00001";
                }
            } else {
                result = prefix + "00001";
            }

        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cn.dc();
        }

        return result;
    }

    public static String getautodocno(Date date_trans) {
        String prefix = getyear2digit(date_trans) + getmonth(date_trans) + getdate(date_trans);
        int tahun = LocalDate.now().getYear();
        Optional<Map<String, Object>> optResult = new DatabaseViews().getAllTransByYear(tahun).stream().filter(d -> {
            java.sql.Date sqldt = (java.sql.Date) d.get("DATE_TRANS");
            java.sql.Date dt = new java.sql.Date(date_trans.getTime());
            if (sqldt.toString().equals(dt.toString())) {
                return true;
            } else {
                return false;
            }

        }).sorted((o1, o2) -> o2.get("DOC_NO").toString().compareTo(o1.get("DOC_NO").toString()))
                .findFirst();

        if (optResult.isPresent()) {
            String rawresult = optResult.get().get("DOC_NO").toString();
            String lastExistPrefix = rawresult.substring(0, 6);
            if (lastExistPrefix.equals(prefix)) {
                String incPrefix = rawresult.substring(0, 9);
                int intresult = Integer.parseInt(incPrefix) + 1;
                String resNum = String.valueOf(intresult) + "000";
                return resNum;
            } else {
                return prefix + "001000";
            }
        } else {
            return prefix + "001000";
        }
    }

    public static HashMap getrecandsum(String table, String column) {
        HashMap hm = new HashMap();
        Dbconnection db = new Dbconnection();
        String mastertable = table.replace("DETAIL", "MASTER");

        String masterColumnPrefix = column.split("_")[0].substring(0, 2) + "M";
        String docno = masterColumnPrefix + "_" + "DOC" + "_" + "NO";
        if (masterColumnPrefix.equals("CPM")) {
            docno = "CRP_DOC_NO";
        }
        String detailColumnPrefix = column.split("_")[0];

        String query = "SELECT COUNT(*) AS RECDATA, SUM(" + column + ") AS SUMDATA FROM " + table + " d "
                + "INNER JOIN " + mastertable + " m "
                + "ON m." + docno + " = d." + detailColumnPrefix + "_" + masterColumnPrefix + "_MASTER "
                + "WHERE YEAR(" + masterColumnPrefix + "_DATE_TRANS) = ?  ";
        try {
            PreparedStatement pres = db.cn().prepareStatement(query);
            pres.setInt(1, Integer.parseInt(Staticvar.year_periode));
            ResultSet res = pres.executeQuery();
            int recdata = 0;
            double sumdata = 0.0;
            while (res.next()) {
                recdata = res.getInt("RECDATA");
                sumdata = res.getDouble("SUMDATA");
            }
            hm.put("recdata", recdata);
            hm.put("sumdata", sumdata);
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hm;
    }

    public static HashMap getrecandsumjurnal() {
        HashMap hm = new HashMap();
        Dbconnection db = new Dbconnection();
        String queryCount = "SELECT COUNT(*) AS RECDATA FROM TB_JOURNAL_MASTER";
        String query = "SELECT SUM(JD_AMOUNT_DEBIT) AS SUMDATADEBIT,SUM(JD_AMOUNT_KREDIT) AS SUMDATAKREDIT FROM TB_JOURNAL_DETAIL";
        try {
            PreparedStatement pres = db.cn().prepareStatement(query);
            ResultSet res = pres.executeQuery();
            res.next();
            double sumdatadebit = res.getDouble("SUMDATADEBIT");
            double sumdatakredit = res.getDouble("SUMDATAKREDIT");

            PreparedStatement pres2 = db.cn().prepareStatement(queryCount);
            ResultSet res2 = pres2.executeQuery();
            res2.next();
            int recdata = res2.getInt("RECDATA");

            hm.put("recdata", recdata);
            hm.put("sumdatadebit", sumdatadebit);
            hm.put("sumdatakredit", sumdatakredit);
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }
        return hm;
    }

    public static String sof(Object ref) {
        String resform = String.valueOf(ref);
        String res = "";
        if (resform.equals("null") || resform.equals("NULL")) {
            res = "";
        } else {
            res = resform.replaceAll("['\"]", " ");;
        }
        return res;
    }

    public static void generatesaldo(int year) {
        try {
            Dbconnection dbcon = new Dbconnection();
            dbcon.cn().setAutoCommit(false);
            Statement stgetcurbal = dbcon.cn().createStatement();
            ResultSet resgetcurbal = stgetcurbal.executeQuery("SELECT ACC_CODE FROM TB_ACC");
            Statement stsetcurbal = dbcon.cn().createStatement();
            while (resgetcurbal.next()) {
                String query = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=ACC_OPENING_BALANCE WHERE ACC_CODE='" + resgetcurbal.getString("ACC_CODE") + "'";
                stsetcurbal.addBatch(query);
                Logger.getLogger(OneforAllfunc.class.getName()).info("updating opening balance : " + query);
            }
            stsetcurbal.executeBatch();

            String queryselectview = "SELECT ID,ACC_CODE,ACC_CODE_MASTER,DEBIT,CREDIT,SALDO,SALDO_MASTER,DOC_TYPE FROM ALLTRANS WHERE YEAR(DATE_TRANS) = ? ORDER BY ID ASC";

            List<Map<String, Object>> lsAllTrans = DbResultSetter(queryselectview, new Object[]{year});

            Statement stupgenerate = dbcon.cn().createStatement();
            for (Map<String, Object> res : lsAllTrans) {
                String opbalmaster = "(SELECT ACC_CURRENT_BALANCE FROM TB_ACC WHERE ACC_CODE='" + res.get("ACC_CODE_MASTER") + "' FETCH FIRST 1 ROWS ONLY) ";
                String opbaldetail = "(SELECT ACC_CURRENT_BALANCE FROM TB_ACC WHERE ACC_CODE='" + res.get("ACC_CODE") + "'  FETCH FIRST 1 ROWS ONLY)";
                String queryupgen = "";
                String queryupmaster = "";
                String queryupdetail = "";
                switch (res.get("DOC_TYPE").toString()) {
                    case "CP":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "-" + res.get("CREDIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE_MASTER") + "' ";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "+" + res.get("DEBIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE") + "' ";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_CP_DETAIL SET "
                                + "CPD_SALDO_MASTER=" + opbalmaster + " ,"
                                + "CPD_SALDO=" + opbaldetail + " "
                                + "WHERE CPD_ID='" + res.get("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    case "BP":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "-" + res.get("CREDIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE_MASTER") + "' ";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "+" + res.get("DEBIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE") + "' ";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_BP_DETAIL SET "
                                + "BPD_SALDO_MASTER=" + opbalmaster + " ,"
                                + "BPD_SALDO=" + opbaldetail + " "
                                + "WHERE BPD_ID='" + res.get("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    case "CR":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "+" + res.get("DEBIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE_MASTER") + "'";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "-" + res.get("CREDIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE") + "'";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_CR_DETAIL SET "
                                + "CRD_SALDO_MASTER=" + opbalmaster + " ,"
                                + "CRD_SALDO=" + opbaldetail + " "
                                + "WHERE CRD_ID='" + res.get("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    case "BR":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "+" + res.get("DEBIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE_MASTER") + "' ";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "-" + res.get("CREDIT")
                                + " WHERE ACC_CODE='" + res.get("ACC_CODE") + "' ";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_BR_DETAIL SET "
                                + "BRD_SALDO_MASTER=" + opbalmaster + " ,"
                                + "BRD_SALDO=" + opbaldetail + " "
                                + "WHERE BRD_ID='" + res.get("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    default:
                        if ((double) res.get("DEBIT") == 0) {
                            queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "-" + res.get("CREDIT") + " "
                                    + "WHERE ACC_CODE='" + res.get("ACC_CODE") + "'";
                            stupgenerate.addBatch(queryupmaster);
                            queryupgen = "UPDATE TB_JOURNAL_DETAIL SET "
                                    + "JD_SALDO=" + opbaldetail + " "
                                    + "WHERE JD_ID='" + res.get("ID") + "' ";
                            stupgenerate.addBatch(queryupgen);
                        } else {
                            queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "+" + res.get("DEBIT") + " "
                                    + "WHERE ACC_CODE='" + res.get("ACC_CODE") + "'";
                            stupgenerate.addBatch(queryupmaster);
                            queryupgen = "UPDATE TB_JOURNAL_DETAIL SET "
                                    + "JD_SALDO=" + opbaldetail + " "
                                    + "WHERE JD_ID='" + res.get("ID") + "' ";
                            stupgenerate.addBatch(queryupgen);
                        }

                        break;
                }

            }
            Logger.getLogger(OneforAllfunc.class.getName()).info("Execute batch query ");
            stupgenerate.executeBatch();
            Logger.getLogger(OneforAllfunc.class.getName()).info("Ready for commit ");
            dbcon.cn().commit();
            stgetcurbal.close();
            stupgenerate.close();
            dbcon.dc();
            Logger.getLogger(OneforAllfunc.class.getName()).info("Transaction success, data has been generate");
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public static ArrayList<HashMap> importfromexcel(File fl) {
        HashMap hm = new HashMap();
        ArrayList<HashMap> lsdata = new ArrayList();
        try {
            Workbook wb = new XSSFWorkbook(new FileInputStream(fl));
            Sheet sht = wb.getSheetAt(0);
            Iterator<Row> itrrow = sht.iterator();
            while (itrrow.hasNext()) {
                if (itrrow.next().getRowNum() > 0) {
                    Row next = itrrow.next();
                    Iterator<Cell> itrcell = next.iterator();
                    int cellcounter = 0;
                    while (itrcell.hasNext()) {
                        Cell next1 = itrcell.next();
                        if (cellcounter == 0) {
                            hm.put("code", next1.getStringCellValue());
                        } else if (cellcounter == 1) {
                            hm.put("desc", next1.getStringCellValue());
                        } else if (cellcounter == 2) {
                            hm.put("amount", next1.getStringCellValue());
                        }

                    }
                    lsdata.add(hm);
                }
            }
        } catch (Exception ex) {
            info("Error", ex.getMessage());
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);

        }

        return lsdata;
    }

    public static String dbscape(String text) {
        String intext = "";
        intext = text.replaceAll("['\"]", " ");
        return intext;
    }

    public static List<Map<String, Object>> DbResultSetter(String query, Object[] param) {
        try (Connection con = new Dbconnection().cn(); PreparedStatement ps = con.prepareStatement(query)) {
            for (int i = 0; i < param.length; i++) {
                ps.setObject(i + 1, param[i]);
            }
            ResultSet rs = ps.executeQuery();
            List<Map<String, Object>> result = new ArrayList<>();
            while (rs.next()) {
                ResultSetMetaData metaData = rs.getMetaData();
                int columCount = metaData.getColumnCount();
                Map<String, Object> mapRes = new HashMap<>();
                for (int i = 0; i < columCount; i++) {
                    String columnName = metaData.getColumnLabel(i + 1);
                    mapRes.put(columnName, rs.getObject(columnName));
                }
                result.add(mapRes);
            }
            rs.close();
            ps.close();
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }

    }

    public static boolean DbExec(String query, Object[] param) {
        try (Connection con = new Dbconnection().cn(); PreparedStatement ps = con.prepareStatement(query)) {
            for (int i = 0; i < param.length; i++) {
                ps.setObject(i + 1, param[i]);
            }
            int result = ps.executeUpdate();
            if (result == 1) {
                return true;
            }
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }

    }
    


}
