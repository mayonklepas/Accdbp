/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accdbp.helper;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileNameExtensionFilter;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author mulyadi
 */
public class ExportExcel {

    public void exportLedger() {
        JFileChooser chooser = new JFileChooser();
        chooser.setFileFilter(new FileNameExtensionFilter("Excel File", "xlsx"));
        chooser.setSelectedFile(new File("ledger.xlsx"));
        int selected = chooser.showSaveDialog(null);
        String pathSaved = "";
        if (selected == JFileChooser.APPROVE_OPTION) {
            pathSaved = chooser.getSelectedFile().getAbsolutePath();
        } else {
            return;
        }

        String filterExt = "";

        if (!Staticvar.code_from.equals("")) {
            filterExt = "ACC_CODE=" + Staticvar.code_from + " AND ";
        }

        System.out.println("getting data");

        String query = "SELECT ACC_CODE,ACC_NAME ,"
                + "CASE WHEN (SELECT COUNT(*) FROM LEDGER WHERE ACC_CODE=a.ACC_CODE OR ACC_CODE_MASTER=a.ACC_CODE )=0 THEN "
                + "ACC_CURRENT_BALANCE ELSE COALESCE((SELECT CASE WHEN DEBIT = 0 THEN SALDO+CREDIT ELSE SALDO-DEBIT END  FROM "
                + "LEDGER WHERE (ACC_CODE=a.ACC_CODE OR ACC_CODE_MASTER=a.ACC_CODE )  AND "
                + "DATE_TRANS BETWEEN ? AND ?  ORDER BY ID ASC LIMIT 1"
                + "),0) END AS OPENING_BALANCE FROM TB_ACC a WHERE " + filterExt + " ISBOOKPRINT = 0";

        List<Map<String, Object>> result = DbResultSetter(query, new Object[]{Staticvar.date_print_from, Staticvar.date_print_to});

        String queryDetail = "SELECT ID,DATE_TRANS,DOC_NO,REF_NO,DOC_TYPE,ACC_CODE,DEBIT,CREDIT,SALDO,DESCRIPTION "
                + " FROM LEDGER WHERE DATE_TRANS BETWEEN ? AND ? ORDER BY ID ASC";
        List<Map<String, Object>> resultDetail = DbResultSetter(queryDetail, new Object[]{Staticvar.date_print_from, Staticvar.date_print_to});

        FileOutputStream fot = null;
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet("Ledger");

        System.out.println("filling data");
        int rowIndex = 0;
        for (Map<String, Object> md : result) {
            Row row = sheet.createRow(rowIndex);
            row.createCell(0).setCellValue(md.get("ACC_CODE").toString());
            row.createCell(1).setCellValue(md.get("ACC_NAME").toString());
            row.createCell(2).setCellValue((double) md.get("OPENING_BALANCE"));

            List<Map<String, Object>> resDetail = resultDetail.stream().filter(d -> d.get("ACC_CODE").equals(md.get("ACC_CODE").toString())).collect(Collectors.toList());
            rowIndex++;
            if (resDetail.size() > 0) {
                Row rowinDef = sheet.createRow(rowIndex);
                rowinDef.createCell(0).setCellValue("ID");
                rowinDef.createCell(1).setCellValue("TANGGAL TRANSAKSI");
                rowinDef.createCell(2).setCellValue("DOC NO");
                rowinDef.createCell(3).setCellValue("REF NO");
                rowinDef.createCell(4).setCellValue("DOC TYPE");
                rowinDef.createCell(5).setCellValue("ACC CODE");
                rowinDef.createCell(6).setCellValue("DEBIT");
                rowinDef.createCell(7).setCellValue("CREDIT");
                rowinDef.createCell(8).setCellValue("SALDO");
                rowinDef.createCell(9).setCellValue("DESCRIPTION");
                rowIndex++;
                for (Map<String, Object> d : resDetail) {
                    Row rowin = sheet.createRow(rowIndex);
                    rowin.createCell(0).setCellValue(d.get("ID").toString());
                    rowin.createCell(1).setCellValue(d.get("DATE_TRANS").toString());
                    rowin.createCell(2).setCellValue(d.get("DOC_NO").toString());
                    rowin.createCell(3).setCellValue(d.get("REF_NO").toString());
                    rowin.createCell(4).setCellValue(d.get("DOC_TYPE").toString());
                    rowin.createCell(5).setCellValue(d.get("ACC_CODE").toString());
                    rowin.createCell(6).setCellValue((double) d.get("DEBIT"));
                    rowin.createCell(7).setCellValue((double) d.get("CREDIT"));
                    rowin.createCell(8).setCellValue((double) d.get("SALDO"));
                    rowin.createCell(9).setCellValue(d.get("DESCRIPTION").toString());
                    rowIndex++;
                }
            }

        }

        try {
            System.out.println("generating file");
            fot = new FileOutputStream(pathSaved);
            wb.write(fot);
            System.out.println("success Export");
            JOptionPane.showMessageDialog(null, "Export Success");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                fot.close();
                wb.close();
            } catch (IOException ex) {
                Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void exportBookPrint() {
        JFileChooser chooser = new JFileChooser();
        chooser.setFileFilter(new FileNameExtensionFilter("Excel File", "xlsx"));
        chooser.setSelectedFile(new File("bookprint.xlsx"));
        int selected = chooser.showSaveDialog(null);
        String pathSaved = "";
        if (selected == JFileChooser.APPROVE_OPTION) {
            pathSaved = chooser.getSelectedFile().getAbsolutePath();
        } else {
            return;
        }

        String filterExt = "";

        if (!Staticvar.code_from.equals("")) {
            filterExt = "ACC_CODE=" + Staticvar.code_from + " AND ";
        }

        if (Staticvar.acc_type != 2) {
            filterExt = filterExt + "ACC_TYPE=" + Staticvar.acc_type + " AND ";
        }

        System.out.println("getting data");
        String query = "SELECT ACC_CODE,ACC_NAME ,"
                + "CASE WHEN (SELECT COUNT(*) FROM BOOKPRINT WHERE ACC_CODE_MASTER=a.ACC_CODE )=0 THEN "
                + "ACC_CURRENT_BALANCE "
                + "ELSE "
                + "COALESCE((SELECT "
                + "CASE WHEN DEBIT = 0 THEN SALDO_MASTER+CREDIT ELSE SALDO_MASTER-DEBIT END  FROM "
                + "BOOKPRINT WHERE ACC_CODE_MASTER=a.ACC_CODE AND "
                + "DATE_TRANS BETWEEN ? AND ?  ORDER BY ID ASC LIMIT 1 "
                + "),0) END "
                + " AS OPENING_BALANCE "
                + "FROM TB_ACC a WHERE " + filterExt + " ISBOOKPRINT=1";

        List<Map<String, Object>> result = DbResultSetter(query, new Object[]{Staticvar.date_print_from, Staticvar.date_print_to});

        String queryDetail = "SELECT ID,DATE_TRANS,DOC_NO,REF_NO,DOC_TYPE,ACC_CODE,ACC_CODE_MASTER,DEBIT,CREDIT,SALDO_MASTER,DESCRIPTION "
                + " FROM BOOKPRINT WHERE DATE_TRANS BETWEEN ? AND ? ORDER BY ID ASC";
        List<Map<String, Object>> resultDetail = DbResultSetter(queryDetail, new Object[]{Staticvar.date_print_from, Staticvar.date_print_to});

        FileOutputStream fot = null;
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet("Bookprint");

        System.out.println("filling data");
        int rowIndex = 0;
        for (Map<String, Object> md : result) {
            Row row = sheet.createRow(rowIndex);
            row.createCell(0).setCellValue(md.get("ACC_CODE").toString());
            row.createCell(1).setCellValue(md.get("ACC_NAME").toString());
            row.createCell(2).setCellValue((double) md.get("OPENING_BALANCE"));
            rowIndex++;
            List<Map<String, Object>> resDetail = resultDetail.stream().filter(d -> d.get("ACC_CODE_MASTER").equals(md.get("ACC_CODE").toString())).collect(Collectors.toList());
            if (resDetail.size() > 0) {
                Row rowinDef = sheet.createRow(rowIndex);
                rowinDef.createCell(0).setCellValue("ID");
                rowinDef.createCell(1).setCellValue("TANGGAL TRANSAKSI");
                rowinDef.createCell(2).setCellValue("DOC NO");
                rowinDef.createCell(3).setCellValue("REF NO");
                rowinDef.createCell(4).setCellValue("DOC TYPE");
                rowinDef.createCell(5).setCellValue("ACC CODE");
                rowinDef.createCell(6).setCellValue("DEBIT");
                rowinDef.createCell(7).setCellValue("CREDIT");
                rowinDef.createCell(8).setCellValue("SALDO");
                rowinDef.createCell(9).setCellValue("DESCRIPTION");
                rowIndex++;
                for (Map<String, Object> d : resDetail) {
                    Row rowin = sheet.createRow(rowIndex);
                    rowin.createCell(0).setCellValue(d.get("ID").toString());
                    rowin.createCell(1).setCellValue(d.get("DATE_TRANS").toString());
                    rowin.createCell(2).setCellValue(d.get("DOC_NO").toString());
                    rowin.createCell(3).setCellValue(d.get("REF_NO").toString());
                    rowin.createCell(4).setCellValue(d.get("DOC_TYPE").toString());
                    rowin.createCell(5).setCellValue(d.get("ACC_CODE").toString());
                    rowin.createCell(6).setCellValue((double) d.get("DEBIT"));
                    rowin.createCell(7).setCellValue((double) d.get("CREDIT"));
                    rowin.createCell(8).setCellValue((double) d.get("SALDO_MASTER"));
                    rowin.createCell(9).setCellValue(d.get("DESCRIPTION").toString());
                    rowIndex++;
                }
            }

        }

        try {
            fot = new FileOutputStream(pathSaved);
            System.out.println("Generating file");
            wb.write(fot);
            JOptionPane.showMessageDialog(null, "Export Success");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                fot.close();
                wb.close();
            } catch (IOException ex) {
                Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void exportBalance(String typeReport) {
        JFileChooser chooser = new JFileChooser();
        chooser.setFileFilter(new FileNameExtensionFilter("Excel File", "xlsx"));
        chooser.setSelectedFile(new File(typeReport + ".xlsx"));
        int selected = chooser.showSaveDialog(null);
        String pathSaved = "";
        if (selected == JFileChooser.APPROVE_OPTION) {
            pathSaved = chooser.getSelectedFile().getAbsolutePath();
        } else {
            return;
        }

        String query = "";
        System.out.println("getting data");
        if (typeReport.equals("balancesheet")) {
            query = "SELECT ACC_CODE,ACC_NAME, "
                    + "CASE WHEN (SELECT COUNT(*) FROM BALANCESET WHERE  DATE_TRANS BETWEEN ?  AND ? ) = 0 THEN "
                    + "ACC_OPENING_BALANCE "
                    + "ELSE "
                    + "CASE WHEN ISBOOKPRINT=0 "
                    + "THEN "
                    + "CASE WHEN (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC  LIMIT 1) <= ? "
                    + "THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE "
                    + "COALESCE((SELECT SALDO FROM BALANCESET WHERE ACC_CODE=ta.ACC_CODE "
                    + "	 AND DATE_TRANS BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1 ),0) "
                    + "	 END "
                    + "ELSE "
                    + "CASE WHEN (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT 1 ) <= ? "
                    + "THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE "
                    + "COALESCE((SELECT SALDO_MASTER FROM BALANCESET WHERE ACC_CODE_MASTER=ta.ACC_CODE "
                    + "	AND DATE_TRANS BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1 ),0) "
                    + "	END "
                    + "END END AS AMOUNT "
                    + "FROM "
                    + "TB_ACC ta WHERE ACC_GROUP=0 OR ACC_GROUP=2 "
                    + "ORDER BY ACC_CODE ASC";
        } else if (typeReport.equals("trialbalance")) {
            query = "SELECT ACC_CODE,ACC_NAME,"
                    + "CASE WHEN (SELECT COUNT(*) FROM BALANCESET WHERE  DATE_TRANS BETWEEN ?  AND ? ) = 0 THEN "
                    + "ACC_OPENING_BALANCE "
                    + "ELSE "
                    + "CASE WHEN ISBOOKPRINT=0 THEN "
                    + "CASE WHEN  (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT 1) <= ? THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE COALESCE((SELECT SALDO FROM BALANCESET WHERE ACC_CODE=ta.ACC_CODE AND DATE_TRANS "
                    + "BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1),0) END "
                    + "ELSE "
                    + "CASE WHEN  (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT 1 ) <= ? THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE COALESCE((SELECT SALDO_MASTER FROM BALANCESET WHERE ACC_CODE_MASTER=ta.ACC_CODE  AND DATE_TRANS "
                    + "BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1 ),0) END "
                    + "END END AS AMOUNT "
                    + "FROM "
                    + "TB_ACC ta "
                    + "ORDER BY ACC_CODE ASC";
        } else if (typeReport.equals("accountbalance")) {
            query = "SELECT ACC_CODE,ACC_NAME, "
                    + "CASE WHEN (SELECT COUNT(*) FROM BALANCESET WHERE  DATE_TRANS BETWEEN ? AND ? ) = 0 THEN "
                    + "ACC_OPENING_BALANCE "
                    + "ELSE "
                    + "CASE WHEN ISBOOKPRINT=0  "
                    + "THEN "
                    + "CASE WHEN (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT 1 ) <= ? "
                    + "THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE "
                    + "COALESCE((SELECT SALDO FROM BALANCESET WHERE ACC_CODE=ta.ACC_CODE "
                    + "	 AND DATE_TRANS BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1 ),0) "
                    + "	 END "
                    + "ELSE  "
                    + "CASE WHEN (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT  1) <= ?  "
                    + "THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE "
                    + "COALESCE((SELECT SALDO_MASTER FROM BALANCESET WHERE ACC_CODE_MASTER=ta.ACC_CODE  "
                    + "	AND DATE_TRANS BETWEEN ? AND ? ORDER BY ID DESC  LIMIT 1),0) "
                    + "	END "
                    + "END END AS AMOUNT "
                    + "FROM  "
                    + "TB_ACC ta  WHERE ACC_CODE BETWEEN '"+Staticvar.code_from+"' AND '"+Staticvar.code_to+"' "
                    + "ORDER BY ACC_CODE ASC";
        } else {
            query = "SELECT ACC_CODE,ACC_NAME, "
                    + "CASE WHEN (SELECT COUNT(*) FROM BALANCESET WHERE  DATE_TRANS BETWEEN ?  AND ? ) = 0 THEN "
                    + "ACC_OPENING_BALANCE "
                    + "ELSE "
                    + "CASE WHEN ISBOOKPRINT=0  "
                    + "THEN "
                    + "CASE WHEN (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT 1) <= ? "
                    + "THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE "
                    + "COALESCE((SELECT SALDO FROM BALANCESET WHERE ACC_CODE=ta.ACC_CODE "
                    + "	 AND DATE_TRANS BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1 ),0) "
                    + "	 END "
                    + "ELSE  "
                    + "CASE WHEN (SELECT DATE_TRANS FROM BALANCESET ORDER BY ID DESC LIMIT 1) <= ? "
                    + "THEN "
                    + "ACC_CURRENT_BALANCE "
                    + "ELSE "
                    + "COALESCE((SELECT SALDO_MASTER FROM BALANCESET WHERE ACC_CODE_MASTER=ta.ACC_CODE  "
                    + "	AND DATE_TRANS BETWEEN ? AND ? ORDER BY ID DESC LIMIT 1 ),0) "
                    + "	END "
                    + "END END AS AMOUNT "
                    + "FROM  "
                    + "TB_ACC ta WHERE ACC_GROUP=1 OR ACC_GROUP=3 "
                    + "ORDER BY ACC_CODE ASC";
        }

        List<Map<String, Object>> result = DbResultSetter(query, new Object[]{
            Staticvar.date_print_from,
            Staticvar.date_print_to,
            Staticvar.date_print_to,
            Staticvar.date_print_from,
            Staticvar.date_print_to,
            Staticvar.date_print_to,
            Staticvar.date_print_from,
            Staticvar.date_print_to});

        FileOutputStream fot = null;
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet(typeReport);

        System.out.println("filling data");
        int rowIndex = 0;
        double totalDebit = 0.0;
        double totalKredit = 0.0;
        for (Map<String, Object> md : result) {
            Row row = sheet.createRow(rowIndex);
            row.createCell(0).setCellValue(md.get("ACC_CODE").toString());
            row.createCell(1).setCellValue(md.get("ACC_NAME").toString());
            double amount = (double) md.get("AMOUNT");
            double amountDebit = (amount > 0) ? amount : 0;
            double amountKredit = (amount < 0) ? amount * -1 : 0;
            row.createCell(2).setCellValue(amountDebit);
            row.createCell(3).setCellValue(amountKredit);
            totalDebit = totalDebit + amountDebit;
            totalKredit = totalKredit + amountKredit;
            rowIndex++;

        }

        Row rowSummary = sheet.createRow(rowIndex);
        rowSummary.createCell(0).setCellValue("Total");
        rowSummary.createCell(1).setCellValue("");
        rowSummary.createCell(2).setCellValue(totalDebit);
        rowSummary.createCell(3).setCellValue(totalKredit);

        try {
            fot = new FileOutputStream(pathSaved);
            System.out.println("Generating file");
            wb.write(fot);
            JOptionPane.showMessageDialog(null, "Export Success");
        } catch (FileNotFoundException ex) {
            Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                fot.close();
                wb.close();
            } catch (IOException ex) {
                Logger.getLogger(ExportExcel.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    private List<Map<String, Object>> DbResultSetter(String query, Object[] param) {
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

}
