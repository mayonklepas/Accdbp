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
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JDialog;

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
            NumberFormat nf = NumberFormat.getCurrencyInstance();
            res = nf.format(ref);
        } catch (Exception e) {
            res = "0";
        }

        return res;
    }

    public static String nf(double ref) {
        String res = "0";
        try {
            NumberFormat nf = NumberFormat.getInstance();
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
            PreparedStatement pres = dcon.cn().prepareStatement("SELECT COUNT(ACC_CODE) AS RESL FROM TB_ACC WHERE ACC_CODE=? ;");
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
            String query = "SELECT FIRST 1 " + column + " FROM " + table + " "
                 + "WHERE " + column + " LIKE ?  ORDER BY CAST(" + column + " AS integer) DESC";
            PreparedStatement pres = cn.cn().prepareStatement(query);
            pres.setString(1, "%" + prefix + "%");
            ResultSet res = pres.executeQuery();
            String rawresult = "";
            while (res.next()) {
                rawresult = res.getString(column);
            }
            if (!rawresult.equals("")) {
                int panjangprefix = rawresult.length() - 5;
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
        String result = "";
        Dbconnection cn = new Dbconnection();
        try {
            String query = "SELECT FIRST 1 DOC_NO FROM ALLTRANS WHERE DATE_TRANS=? ORDER BY CAST( DOC_NO AS integer) DESC";
            PreparedStatement pres = cn.cn().prepareStatement(query);
            pres.setString(1, datetodb(date_trans));
            ResultSet res = pres.executeQuery();
            String rawresult = "";
            while (res.next()) {
                rawresult = res.getString("DOC_NO");
            }
            String prefix = getyear2digit(date_trans) + getmonth(date_trans) + getdate(date_trans);
            if (!rawresult.equals("")) {
                int panjangprefix = rawresult.length() - 2;
                if (rawresult.substring(0, panjangprefix).equals(prefix)) {
                    int intresult = Integer.parseInt(rawresult) + 1;
                    result = String.valueOf(intresult);
                } else {
                    result = prefix + "01";
                }
            } else {
                result = prefix + "01";
            }

        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            cn.dc();
        }

        return result;
    }

    public static HashMap getrecandsum(String table, String column) {
        HashMap hm = new HashMap();
        Dbconnection db = new Dbconnection();
        String mastertable = table.replace("DETAIL", "MASTER");
        String query = "SELECT (SELECT COUNT(*) FROM " + mastertable + ") AS RECDATA,SUM(" + column + ") AS SUMDATA FROM " + table + "";
        try {
            PreparedStatement pres = db.cn().prepareStatement(query);
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
        String query = "SELECT (SELECT COUNT(*) FROM TB_JOURNAL_MASTER) AS RECDATA,SUM(JD_AMOUNT_DEBIT) AS SUMDATADEBIT,SUM(JD_AMOUNT_KREDIT) AS SUMDATAKREDIT FROM TB_JOURNAL_DETAIL";
        try {
            PreparedStatement pres = db.cn().prepareStatement(query);
            ResultSet res = pres.executeQuery();
            int recdata = 0;
            double sumdatadebit = 0.0;
            double sumdatakredit = 0.0;
            while (res.next()) {
                recdata = res.getInt("RECDATA");
                sumdatadebit = res.getDouble("SUMDATADEBIT");
                sumdatakredit = res.getDouble("SUMDATAKREDIT");
            }
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
            res = resform;
        }
        return res;
    }

    public static void generatesaldo() {
        try {
            Dbconnection dbcon = new Dbconnection();
            Statement stgetcurbal = dbcon.cn().createStatement();
            ResultSet resgetcurbal = stgetcurbal.executeQuery("SELECT ACC_CODE FROM TB_ACC");
            Statement stsetcurbal = dbcon.cn().createStatement();
            while (resgetcurbal.next()) {
                String query = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=ACC_OPENING_BALANCE WHERE ACC_CODE='" + resgetcurbal.getString("ACC_CODE") + "'";
                stsetcurbal.addBatch(query);
            }
            stsetcurbal.executeBatch();
            dbcon.dc();
            Statement stselectview = dbcon.cn().createStatement();
            String queryselectview = "SELECT ID,ACC_CODE,ACC_CODE_MASTER,DEBIT,CREDIT,SALDO,SALDO_MASTER,DOC_TYPE FROM ALLTRANS ORDER BY ID ASC";
            ResultSet res = stselectview.executeQuery(queryselectview);
            Statement stupgenerate = dbcon.cn().createStatement();
            while (res.next()) {
                String opbalmaster = "(SELECT ACC_CURRENT_BALANCE FROM TB_ACC WHERE ACC_CODE='" + res.getString("ACC_CODE_MASTER") + "')";
                String opbaldetail = "(SELECT ACC_CURRENT_BALANCE FROM TB_ACC WHERE ACC_CODE='" + res.getString("ACC_CODE") + "')";
                String queryupgen = "";
                String queryupmaster = "";
                String queryupdetail = "";
                switch (res.getString("DOC_TYPE")) {
                    case "CP":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "-" + res.getDouble("CREDIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE_MASTER") + "' ";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "+" + res.getString("DEBIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE") + "' ";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_CP_DETAIL SET "
                             + "CPD_SALDO_MASTER=" + opbalmaster + " ,"
                             + "CPD_SALDO=" + opbaldetail + " "
                             + "WHERE CPD_ID='" + res.getString("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    case "BP":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "-" + res.getDouble("CREDIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE_MASTER") + "' ";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "+" + res.getDouble("DEBIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE") + "' ";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_BP_DETAIL SET "
                             + "BPD_SALDO_MASTER=" + opbalmaster + " ,"
                             + "BPD_SALDO=" + opbaldetail + " "
                             + "WHERE BPD_ID='" + res.getString("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    case "CR":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "+" + res.getDouble("DEBIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE_MASTER") + "'";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "-" + res.getDouble("CREDIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE") + "'";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_CR_DETAIL SET "
                             + "CRD_SALDO_MASTER=" + opbalmaster + " ,"
                             + "CRD_SALDO=" + opbaldetail + " "
                             + "WHERE CRD_ID='" + res.getString("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    case "BR":
                        queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbalmaster + "+" + res.getDouble("DEBIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE_MASTER") + "' ";
                        stupgenerate.addBatch(queryupmaster);
                        queryupdetail = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "-" + res.getDouble("CREDIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE") + "' ";
                        stupgenerate.addBatch(queryupdetail);
                        queryupgen = "UPDATE TB_BR_DETAIL SET "
                             + "BRD_SALDO_MASTER=" + opbalmaster + " ,"
                             + "BRD_SALDO=" + opbaldetail + " "
                             + "WHERE BRD_ID='" + res.getString("ID") + "' ";
                        stupgenerate.addBatch(queryupgen);
                        break;
                    default:
                        if (res.getDouble("DEBIT") == 0) {
                            queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "-" + res.getDouble("CREDIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE") + "'";
                            stupgenerate.addBatch(queryupmaster);
                            queryupgen = "UPDATE TB_JOURNAL_DETAIL SET "
                                 + "JD_SALDO=" + opbaldetail + " "
                                 + "WHERE JD_ID='" + res.getString("ID") + "' ";
                            stupgenerate.addBatch(queryupgen);
                        } else {
                            queryupmaster = "UPDATE TB_ACC SET ACC_CURRENT_BALANCE=" + opbaldetail + "+" + res.getDouble("DEBIT") + " WHERE ACC_CODE='" + res.getString("ACC_CODE") + "'";
                            stupgenerate.addBatch(queryupmaster);
                            queryupgen = "UPDATE TB_JOURNAL_DETAIL SET "
                                 + "JD_SALDO=" + opbaldetail + " "
                                 + "WHERE JD_ID='" + res.getString("ID") + "' ";
                            stupgenerate.addBatch(queryupgen);
                        }

                        break;
                }

                stupgenerate.executeBatch();
            }
        } catch (SQLException ex) {
            Logger.getLogger(OneforAllfunc.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
