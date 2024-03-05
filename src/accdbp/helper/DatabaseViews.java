/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package accdbp.helper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mulyadi
 */
public class DatabaseViews {

    public List<Map<String, Object>> getAllTransByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(5);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT  "
                    + "    CPD_ID AS ID, "
                    + "    CPD_DATE_CREATED AS DATE_CREATED, "
                    + "    'CP' AS DOC_TYPE, "
                    + "    CPM_DATE_TRANS AS DATE_TRANS, "
                    + "    CRP_DOC_NO AS DOC_NO, "
                    + "    CPM_REF_NO AS REF_NO, "
                    + "    CPD_CPM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(CPD_AMOUNT, 0) AS CREDIT, "
                    + "    COALESCE(CPD_AMOUNT_DEBIT, 0) AS DEBIT, "
                    + "    CPD_SALDO AS SALDO, "
                    + "    CPD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    CPD_DESC AS DESCRIPTION, "
                    + "    CPD_ACC AS ACC_CODE, "
                    + "    TB_CP_MASTER.CPM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_CP_DETAIL "
                    + "INNER JOIN TB_CP_MASTER "
                    + "    ON TB_CP_DETAIL.CPD_CPM_MASTER=TB_CP_MASTER.CRP_DOC_NO  "
                    + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CRD_ID AS ID, "
                    + "    CRD_DATE_CREATED AS DATE_CREATED, "
                    + "    'CR' AS DOC_TYPE, "
                    + "    CRM_DATE_TRANS AS DATE_TRANS, "
                    + "    CRM_DOC_NO AS DOC_NO, "
                    + "    CRM_REF_NO AS REF_NO, "
                    + "    CRD_CRM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(CRD_AMOUNT_KREDIT, 0) AS CREDIT, "
                    + "    COALESCE(CRD_AMOUNT, 0) AS DEBIT, "
                    + "    CRD_SALDO AS SALDO, "
                    + "    CRD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    CRD_DESC AS DESCRIPTION, "
                    + "    CRD_ACC AS ACC_CODE, "
                    + "    TB_CR_MASTER.CRM_ACC AS ACC_CODE_MASTER  "
                    + "FROM TB_CR_DETAIL "
                    + "INNER JOIN TB_CR_MASTER "
                    + "    ON TB_CR_DETAIL.CRD_CRM_MASTER =TB_CR_MASTER.CRM_DOC_NO  "
                    + "WHERE EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BPD_ID AS ID, "
                    + "    BPD_DATE_CREATED AS DATE_CREATED, "
                    + "    'BP' AS DOC_TYPE, "
                    + "    BPM_DATE_TRANS AS DATE_TRANS, "
                    + "    BPM_DOC_NO AS DOC_NO, "
                    + "    BPM_REF_NO AS REF_NO, "
                    + "    BPD_BPM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(BPD_AMOUNT, 0) AS CREDIT, "
                    + "    COALESCE(BPD_AMOUNT_DEBIT, 0) AS DEBIT, "
                    + "    BPD_SALDO AS SALDO, "
                    + "    BPD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    BPD_DESC AS DESCRIPTION, "
                    + "    BPD_ACC AS ACC_CODE, "
                    + "    TB_BP_MASTER.BPM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_BP_DETAIL "
                    + "INNER JOIN TB_BP_MASTER "
                    + "    ON TB_BP_DETAIL.BPD_BPM_MASTER = TB_BP_MASTER.BPM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BRD_ID AS ID, "
                    + "    BRD_DATE_CREATED AS DATE_CREATED, "
                    + "    'BR' AS DOC_TYPE, "
                    + "    BRM_DATE_TRANS AS DATE_TRANS, "
                    + "    BRM_DOC_NO AS DOC_NO, "
                    + "    BRM_REF_NO AS REF_NO, "
                    + "    BRD_BRM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(BRD_AMOUNT_KREDIT, 0) AS CREDIT, "
                    + "    COALESCE(BRD_AMOUNT, 0) AS DEBIT, "
                    + "    BRD_SALDO AS SALDO, "
                    + "    BRD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    BRD_DESC AS DESCRIPTION, "
                    + "    BRD_ACC AS ACC_CODE, "
                    + "    TB_BR_MASTER.BRM_ACC  AS ACC_CODE_MASTER "
                    + "FROM TB_BR_DETAIL "
                    + "INNER JOIN TB_BR_MASTER "
                    + "    ON TB_BR_DETAIL.BRD_BRM_MASTER = TB_BR_MASTER.BRM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    JD_ID AS ID, "
                    + "    JD_DATE_CREATED AS DATE_CREATED, "
                    + "    CASE JM_TYPE WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS DOC_TYPE, "
                    + "    JM_DATE_TRANS AS DATE_TRANS, "
                    + "    JM_DOC_NO AS DOC_NO, "
                    + "    JM_REF_NO AS REF_NO, "
                    + "    JD_JM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(JD_AMOUNT_KREDIT, 0) AS CREDIT, "
                    + "    COALESCE(JD_AMOUNT_DEBIT, 0) AS DEBIT, "
                    + "    JD_SALDO AS SALDO, "
                    + "    JD_SALDO AS SALDO_MASTER, "
                    + "    JD_DESC AS DESCRIPTION, "
                    + "    JD_ACC AS ACC_CODE, "
                    + "    JD_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_JOURNAL_DETAIL "
                    + "INNER JOIN TB_JOURNAL_MASTER "
                    + "    ON TB_JOURNAL_DETAIL.JD_JM_MASTER = TB_JOURNAL_MASTER.JM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_JOURNAL_MASTER.JM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        execServ.shutdown();

        return result;

    }

    public List<Map<String, Object>> getBalanceSetByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(5);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CPD_ID AS  ID ,"
                    + "    CPM_DATE_TRANS  AS  DATE_TRANS ,"
                    + "    CPD_ACC AS ACC_CODE ,"
                    + "    CPM_ACC AS ACC_CODE_MASTER ,"
                    + "    CPD_SALDO AS SALDO,"
                    + "    CPD_SALDO_MASTER  AS SALDO_MASTER ,"
                    + "    (SELECT ISBOOKPRINT FROM TB_ACC WHERE  ACC_CODE = CPM_ACC LIMIT 1) AS  ISBOOKPRINT "
                    + "FROM  TB_CP_DETAIL "
                    + "INNER JOIN  TB_CP_MASTER "
                    + "    ON TB_CP_DETAIL.CPD_CPM_MASTER=TB_CP_MASTER.CRP_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CRD_ID  AS  ID ,"
                    + "    CRM_DATE_TRANS  AS  DATE_TRANS ,"
                    + "    CRD_ACC AS ACC_CODE,"
                    + "    CRM_ACC AS ACC_CODE_MASTER,"
                    + "    CRD_SALDO AS SALDO,"
                    + "    CRD_SALDO_MASTER AS SALDO_MASTER,"
                    + "    (SELECT ISBOOKPRINT FROM TB_ACC WHERE ACC_CODE = CRM_ACC LIMIT 1) AS ISBOOKPRINT "
                    + "FROM  TB_CR_DETAIL "
                    + "INNER JOIN  TB_CR_MASTER "
                    + "    ON TB_CR_DETAIL.CRD_CRM_MASTER = TB_CR_MASTER.CRM_DOC_NO "
                    + "WHERE  EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BPD_ID AS ID ,"
                    + "    BPM_DATE_TRANS  AS  DATE_TRANS ,"
                    + "    BPD_ACC AS ACC_CODE,"
                    + "    BPM_ACC AS ACC_CODE_MASTER,"
                    + "    BPD_SALDO AS SALDO,"
                    + "    BPD_SALDO_MASTER AS SALDO_MASTER,"
                    + "   (SELECT ISBOOKPRINT FROM TB_ACC WHERE ACC_CODE = BPM_ACC LIMIT 1) AS ISBOOKPRINT "
                    + "FROM  TB_BP_DETAIL "
                    + "INNER JOIN TB_BP_MASTER "
                    + "    ON TB_BP_DETAIL.BPD_BPM_MASTER = TB_BP_MASTER.BPM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "     BRD_ID AS ID ,"
                    + "     BRM_DATE_TRANS AS DATE_TRANS ,"
                    + "     BRD_ACC AS ACC_CODE,"
                    + "     BRM_ACC AS ACC_CODE_MASTER,"
                    + "     BRD_SALDO AS SALDO,"
                    + "     BRD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    (SELECT ISBOOKPRINT FROM TB_ACC WHERE ACC_CODE = BRM_ACC  LIMIT 1) AS ISBOOKPRINT "
                    + "FROM  TB_BR_DETAIL  "
                    + "INNER JOIN TB_BR_MASTER  "
                    + "    ON TB_BR_DETAIL.BRD_BRM_MASTER = TB_BR_MASTER.BRM_DOC_NO "
                    + "WHERE  EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT"
                    + "    JD_ID AS ID,"
                    + "    JM_DATE_TRANS AS DATE_TRANS,"
                    + "    JD_ACC AS ACC_CODE,"
                    + "    JD_ACC AS ACC_CODE_MASTER,"
                    + "    JD_SALDO AS SALDO,"
                    + "    JD_SALDO AS SALDO_MASTER,"
                    + "    (SELECT ISBOOKPRINT FROM TB_ACC WHERE ACC_CODE = JD_ACC LIMIT 1) AS ISBOOKPRINT "
                    + "FROM TB_JOURNAL_DETAIL "
                    + "INNER JOIN TB_JOURNAL_MASTER "
                    + "    ON TB_JOURNAL_DETAIL.JD_JM_MASTER = TB_JOURNAL_MASTER.JM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_JOURNAL_MASTER.JM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        execServ.shutdown();

        return result;

    }

    public List<Map<String, Object>> getBookPrintByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(5);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CPD_ID AS ID,"
                    + "    CPD_DATE_CREATED AS DATE_CREATED,"
                    + "    'CP' AS DOC_TYPE,"
                    + "    CPM_DATE_TRANS AS DATE_TRANS,"
                    + "    CRP_DOC_NO AS DOC_NO,"
                    + "    CPM_REF_NO AS REF_NO,"
                    + "    CPD_CPM_MASTER AS DOC_NO_2,"
                    + "    COALESCE(CPD_AMOUNT, 0) AS CREDIT,"
                    + "    0 AS DEBIT,"
                    + "    CPD_SALDO AS SALDO,"
                    + "    CPD_SALDO_MASTER AS SALDO_MASTER,"
                    + "    CPD_DESC AS DESCRIPTION,"
                    + "    CPD_ACC AS ACC_CODE,"
                    + "    TB_CP_MASTER.CPM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_CP_DETAIL"
                    + "INNER JOIN TB_CP_MASTER"
                    + "    ON TB_CP_DETAIL.CPD_CPM_MASTER = TB_CP_MASTER.CRP_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CRD_ID AS ID,"
                    + "    CRD_DATE_CREATED AS DATE_CREATED,"
                    + "    'CR' AS DOC_TYPE,"
                    + "    CRM_DATE_TRANS AS DATE_TRANS,"
                    + "    CRM_DOC_NO AS DOC_NO,"
                    + "    CRM_REF_NO AS REF_NO,"
                    + "    CRD_CRM_MASTER AS DOC_NO_2,"
                    + "    0 AS CREDIT,"
                    + "    COALESCE(CRD_AMOUNT, 0) AS DEBIT,"
                    + "    CRD_SALDO AS SALDO,"
                    + "    CRD_SALDO_MASTER AS SALDO_MASTER,"
                    + "    CRD_DESC AS DESCRIPTION,"
                    + "    CRD_ACC AS ACC_CODE,"
                    + "    TB_CR_MASTER.CRM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_CR_DETAIL"
                    + "INNER JOIN TB_CR_MASTER"
                    + "    ON TB_CR_DETAIL.CRD_CRM_MASTER = TB_CR_MASTER.CRM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BPD_ID AS ID,"
                    + "    BPD_DATE_CREATED AS DATE_CREATED,"
                    + "    'BP' AS DOC_TYPE,"
                    + "    BPM_DATE_TRANS AS DATE_TRANS,"
                    + "    BPM_DOC_NO AS DOC_NO,"
                    + "    BPM_REF_NO AS REF_NO,"
                    + "    BPD_BPM_MASTER AS DOC_NO_2,"
                    + "    COALESCE(BPD_AMOUNT, 0) AS CREDIT,"
                    + "    0 AS DEBIT,"
                    + "    BPD_SALDO AS SALDO,"
                    + "    BPD_SALDO_MASTER AS SALDO_MASTER,"
                    + "    BPD_DESC AS DESCRIPTION,"
                    + "    BPD_ACC AS ACC_CODE,"
                    + "    TB_BP_MASTER.BPM_ACC AS ACC_CODE_MASTER"
                    + "FROM TB_BP_DETAI "
                    + "INNER JOIN TB_BP_MASTER "
                    + "    ON TB_BP_DETAIL.BPD_BPM_MASTER = TB_BP_MASTER.BPM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BRD_ID AS ID,"
                    + "    BRD_DATE_CREATED AS DATE_CREATED,"
                    + "    'BR' AS DOC_TYPE,"
                    + "    BRM_DATE_TRANS AS DATE_TRANS,"
                    + "    BRM_DOC_NO AS DOC_NO,"
                    + "    BRM_REF_NO AS REF_NO,"
                    + "    BRD_BRM_MASTER AS DOC_NO_2,"
                    + "    0 AS CREDIT,"
                    + "    COALESCE(BRD_AMOUNT, 0) AS DEBIT,"
                    + "    BRD_SALDO AS SALDO,"
                    + "    BRD_SALDO_MASTER AS SALDO_MASTER,"
                    + "    BRD_DESC AS DESCRIPTION,"
                    + "    BRD_ACC AS ACC_CODE,"
                    + "    TB_BR_MASTER.BRM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_BR_DETAIL "
                    + "INNER JOIN TB_BR_MASTER "
                    + "    ON TB_BR_DETAIL.BRD_BRM_MASTER = TB_BR_MASTER.BRM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    JD_ID AS ID,"
                    + "    JD_DATE_CREATED AS DATE_CREATED,"
                    + "    CASE JM_TYPE WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS DOC_TYPE,"
                    + "    JM_DATE_TRANS AS DATE_TRANS,"
                    + "    JM_DOC_NO AS DOC_NO,"
                    + "    JM_REF_NO AS REF_NO,"
                    + "    JD_JM_MASTER AS DOC_NO_2,"
                    + "    COALESCE(JD_AMOUNT_KREDIT, 0) AS CREDIT,"
                    + "    COALESCE(JD_AMOUNT_DEBIT, 0) AS DEBIT,"
                    + "    JD_SALDO AS SALDO,"
                    + "    JD_SALDO AS SALDO_MASTER,"
                    + "    JD_DESC AS DESCRIPTION,"
                    + "    JD_ACC AS ACC_CODE,"
                    + "    JD_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_JOURNAL_DETAIL "
                    + "INNER JOIN TB_JOURNAL_MASTER "
                    + "    ON TB_JOURNAL_DETAIL.JD_JM_MASTER = TB_JOURNAL_MASTER.JM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_JOURNAL_MASTER.JM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        execServ.shutdown();

        return result;

    }

    public List<Map<String, Object>> getCashBookViewByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(4);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT "
                    + "    'CP' AS DOC_TYPE,"
                    + "    CPM_DATE_TRANS AS DATE_TRANS,"
                    + "    CPD_DATE_CREATED AS DATE_CREATED,"
                    + "    CRP_DOC_NO AS DOC_NO,"
                    + "    CPM_REF_NO AS REF_NO,"
                    + "    CPD_CPM_MASTER AS DOC_NO_2,"
                    + "    COALESCE(CPD_AMOUNT, 0) AS CREDIT,"
                    + "    COALESCE(CPD_AMOUNT_DEBIT, 0) AS DEBIT,"
                    + "    CPD_SALDO AS SALDO,"
                    + "    CPD_DESC AS DESCRIPTION,"
                    + "    CPM_ACC AS ACC_CODE,"
                    + "    CPD_ACC AS LINK_TO"
                    + "FROM TB_CP_DETAIL "
                    + "INNER JOIN TB_CP_MASTER "
                    + "    ON TB_CP_DETAIL.CPD_CPM_MASTER = TB_CP_MASTER.CRP_DOC_NO"
                    + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    'CR' AS DOC_TYPE,"
                    + "    CRM_DATE_TRANS AS DATE_TRANS,"
                    + "    CRD_DATE_CREATED AS DATE_CREATED,"
                    + "    CRM_DOC_NO AS DOC_NO,"
                    + "    CRM_REF_NO AS REF_NO,"
                    + "    CRD_CRM_MASTER AS DOC_NO_2,"
                    + "    COALESCE(CRD_AMOUNT_KREDIT, 0) AS CREDIT,"
                    + "    COALESCE(CRD_AMOUNT, 0) AS DEBIT,"
                    + "    CRD_SALDO AS SALDO,"
                    + "    CRD_DESC AS DESCRIPTION,"
                    + "    CRM_ACC  AS ACC_CODE,"
                    + "    CRD_ACC AS LINK_TO "
                    + "FROM TB_CR_DETAIL "
                    + "INNER JOIN TB_CR_MASTER "
                    + "    ON TB_CR_DETAIL.CRD_CRM_MASTER = TB_CR_MASTER.CRM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    'BP' AS DOC_TYPE,"
                    + "    BPM_DATE_TRANS AS DATE_TRANS,"
                    + "    BPD_DATE_CREATED AS DATE_CREATED,"
                    + "    BPM_DOC_NO AS DOC_NO,"
                    + "    BPM_REF_NO AS REF_NO,"
                    + "    BPD_BPM_MASTER DOC_NO_2,"
                    + "    COALESCE(BPD_AMOUNT, 0) AS CREDIT,"
                    + "    COALESCE(BPD_AMOUNT_DEBIT, 0) AS DEBIT,"
                    + "    BPD_SALDO AS SALDO,"
                    + "    BPD_DESC AS DESC,"
                    + "    BPM_ACC AS ACC_CODE,"
                    + "    BPD_ACC AS LINK_TO "
                    + "FROM TB_BP_DETAIL "
                    + "INNER JOIN TB_BP_MASTER "
                    + "    ON TB_BP_DETAIL.BPD_BPM_MASTER = TB_BP_MASTER.BPM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT"
                    + "    'BR' AS DOC_TYPE,"
                    + "    BRM_DATE_TRANS AS DATE_TRANS,"
                    + "    BRD_DATE_CREATED AS DATE_CREATED,"
                    + "    BRM_DOC_NO AS DOC_NO,"
                    + "    BRM_REF_NO AS REF_NO,"
                    + "    BRD_BRM_MASTER AS DOC_NO_2,"
                    + "    COALESCE(BRD_AMOUNT_KREDIT, 0) AS CREDIT,"
                    + "    COALESCE(BRD_AMOUNT, 0) AS DEBIT,"
                    + "    BRD_SALDO AS SALDO,"
                    + "    BRD_DESC AS DESCRIPTION,"
                    + "    BRM_ACC AS ACC_CODE,"
                    + "    BRD_ACC AS LINK_TO"
                    + "FROM TB_BR_DETAIL"
                    + "INNER JOIN TB_BR_MASTER"
                    + "    ON TB_BR_DETAIL.BRD_BRM_MASTER = TB_BR_MASTER.BRM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        execServ.shutdown();

        return result;

    }

    public List<Map<String, Object>> getHeaderLegderViewByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(4);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CRP_DOC_NO AS DOC_NO,"
                    + "    CPM_DATE_TRANS AS DATE_TRANS,"
                    + "    CPM_REF_NO AS REF_NO,"
                    + "    CPM_ACC AS ACC_CODE,"
                    + "    ACC_NAME AS ACC_NAME "
                    + "FROM TB_CP_MASTER "
                    + "INNER JOIN TB_ACC "
                    + "    ON TB_CP_MASTER.CPM_ACC = TB_ACC.ACC_CODE "
                    + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CRM_DOC_NO AS DOC_NO,"
                    + "    CRM_DATE_TRANS AS DATE_TRANS,"
                    + "    CRM_REF_NO AS REF_NO,"
                    + "    CRM_ACC AS ACC_CODE,"
                    + "    ACC_NAME AS ACC_NAME "
                    + "FROM TB_CR_MASTER "
                    + "INNER JOIN TB_ACC "
                    + "    ON TB_CR_MASTER.CRM_ACC = TB_ACC.ACC_CODE "
                    + "WHERE EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BPM_DOC_NO AS DOC_NO,"
                    + "    BPM_DATE_TRANS AS DATE_TRANS,"
                    + "    BPM_REF_NO AS REF_NO,"
                    + "    BPM_ACC AS ACC_CODE,"
                    + "    ACC_NAME AS ACC_NAME "
                    + "FROM TB_BP_MASTER "
                    + "INNER JOIN TB_ACC "
                    + "    ON TB_BP_MASTER.BPM_ACC = TB_ACC.ACC_CODE "
                    + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BRM_DOC_NO AS DOC_NO,"
                    + "    BRM_DATE_TRANS AS DATE_TRANS,"
                    + "    BRM_REF_NO AS REF_NO,"
                    + "    BRM_ACC AS ACC_CODE,"
                    + "    ACC_NAME AS ACC_NAME "
                    + "FROM TB_BR_MASTER "
                    + "INNER JOIN TB_ACC "
                    + "    ON TB_BR_MASTER.BRM_ACC = TB_ACC.ACC_CODE"
                    + "WHERE EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        execServ.shutdown();

        return result;

    }

    public List<Map<String, Object>> getDetailLedgerByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(5);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT  "
                    + "    CPD_ID AS ID, "
                    + "    CPD_DATE_CREATED AS DATE_CREATED, "
                    + "    'CP' AS DOC_TYPE, "
                    + "    CPM_DATE_TRANS AS DATE_TRANS, "
                    + "    CRP_DOC_NO AS DOC_NO, "
                    + "    CPM_REF_NO AS REF_NO, "
                    + "    CPD_CPM_MASTER AS DOC_NO_2, "
                    + "    0 AS CREDIT, "
                    + "    COALESCE(CPD_AMOUNT_DEBIT, 0) AS DEBIT, "
                    + "    CPD_SALDO AS SALDO, "
                    + "    CPD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    CPD_DESC AS DESCRIPTION, "
                    + "    CPD_ACC AS ACC_CODE, "
                    + "    TB_CP_MASTER.CPM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_CP_DETAIL "
                    + "INNER JOIN TB_CP_MASTER "
                    + "    ON TB_CP_DETAIL.CPD_CPM_MASTER=TB_CP_MASTER.CRP_DOC_NO  "
                    + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CRD_ID AS ID, "
                    + "    CRD_DATE_CREATED AS DATE_CREATED, "
                    + "    'CR' AS DOC_TYPE, "
                    + "    CRM_DATE_TRANS AS DATE_TRANS, "
                    + "    CRM_DOC_NO AS DOC_NO, "
                    + "    CRM_REF_NO AS REF_NO, "
                    + "    CRD_CRM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(CRD_AMOUNT_KREDIT, 0) AS CREDIT, "
                    + "    0 AS DEBIT, "
                    + "    CRD_SALDO AS SALDO, "
                    + "    CRD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    CRD_DESC AS DESCRIPTION, "
                    + "    CRD_ACC AS ACC_CODE, "
                    + "    TB_CR_MASTER.CRM_ACC AS ACC_CODE_MASTER  "
                    + "FROM TB_CR_DETAIL "
                    + "INNER JOIN TB_CR_MASTER "
                    + "    ON TB_CR_DETAIL.CRD_CRM_MASTER =TB_CR_MASTER.CRM_DOC_NO  "
                    + "WHERE EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);

        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BPD_ID AS ID, "
                    + "    BPD_DATE_CREATED AS DATE_CREATED, "
                    + "    'BP' AS DOC_TYPE, "
                    + "    BPM_DATE_TRANS AS DATE_TRANS, "
                    + "    BPM_DOC_NO AS DOC_NO, "
                    + "    BPM_REF_NO AS REF_NO, "
                    + "    BPD_BPM_MASTER AS DOC_NO_2, "
                    + "    0 AS CREDIT, "
                    + "    COALESCE(BPD_AMOUNT_DEBIT, 0) AS DEBIT, "
                    + "    BPD_SALDO AS SALDO, "
                    + "    BPD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    BPD_DESC AS DESCRIPTION, "
                    + "    BPD_ACC AS ACC_CODE, "
                    + "    TB_BP_MASTER.BPM_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_BP_DETAIL "
                    + "INNER JOIN TB_BP_MASTER "
                    + "    ON TB_BP_DETAIL.BPD_BPM_MASTER = TB_BP_MASTER.BPM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ? ";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    BRD_ID AS ID, "
                    + "    BRD_DATE_CREATED AS DATE_CREATED, "
                    + "    'BR' AS DOC_TYPE, "
                    + "    BRM_DATE_TRANS AS DATE_TRANS, "
                    + "    BRM_DOC_NO AS DOC_NO, "
                    + "    BRM_REF_NO AS REF_NO, "
                    + "    BRD_BRM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(BRD_AMOUNT_KREDIT, 0) AS CREDIT, "
                    + "    0 AS DEBIT, "
                    + "    BRD_SALDO AS SALDO, "
                    + "    BRD_SALDO_MASTER AS SALDO_MASTER, "
                    + "    BRD_DESC AS DESCRIPTION, "
                    + "    BRD_ACC AS ACC_CODE, "
                    + "    TB_BR_MASTER.BRM_ACC  AS ACC_CODE_MASTER "
                    + "FROM TB_BR_DETAIL "
                    + "INNER JOIN TB_BR_MASTER "
                    + "    ON TB_BR_DETAIL.BRD_BRM_MASTER = TB_BR_MASTER.BRM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        lsCall.add(() -> {
            String query = "SELECT "
                    + "    JD_ID AS ID, "
                    + "    JD_DATE_CREATED AS DATE_CREATED, "
                    + "    CASE JM_TYPE WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS DOC_TYPE, "
                    + "    JM_DATE_TRANS AS DATE_TRANS, "
                    + "    JM_DOC_NO AS DOC_NO, "
                    + "    JM_REF_NO AS REF_NO, "
                    + "    JD_JM_MASTER AS DOC_NO_2, "
                    + "    COALESCE(JD_AMOUNT_KREDIT, 0) AS CREDIT, "
                    + "    COALESCE(JD_AMOUNT_DEBIT, 0) AS DEBIT, "
                    + "    JD_SALDO AS SALDO, "
                    + "    JD_SALDO AS SALDO_MASTER, "
                    + "    JD_DESC AS DESCRIPTION, "
                    + "    JD_ACC AS ACC_CODE, "
                    + "    JD_ACC AS ACC_CODE_MASTER "
                    + "FROM TB_JOURNAL_DETAIL "
                    + "INNER JOIN TB_JOURNAL_MASTER "
                    + "    ON TB_JOURNAL_DETAIL.JD_JM_MASTER = TB_JOURNAL_MASTER.JM_DOC_NO "
                    + "WHERE EXTRACT(YEAR FROM TB_JOURNAL_MASTER.JM_DATE_TRANS) = ?";
            return DbResultSetter(query, param);
        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        execServ.shutdown();

        return result;

    }

    public List<Map<String, Object>> getPlbsHeadByYear(int year) {

        ExecutorService execServ = Executors.newFixedThreadPool(1);
        Object[] param = new Object[]{year};

        List<Callable<List<Map<String, Object>>>> lsCall = new ArrayList<>();
        lsCall.add(() -> {
            String query = "SELECT "
                    + "    CASE ACC_GROUP WHEN 0 THEN 'BALANCE SHEET' "
                    + "    WHEN 2 THEN 'BALANCE SHEET' ELSE 'PROFIT LOSS' END AS REPORT_TYPE,"
                    + "    CASE ACC_GROUP WHEN 0 THEN 'BS' WHEN 2 THEN 'BS' ELSE 'PL' END AS REPORT_CODE "
                    + "FROM PUBLIC.TB_ACC"
                    + "GROUP BY CASE ACC_GROUP WHEN 0 THEN 'BALANCE SHEET' WHEN 2 "
                    + "THEN 'BALANCE SHEET' ELSE 'PROFIT LOSS' END, CASE ACC_GROUP "
                    + "WHEN 0 THEN 'BS' WHEN 2 THEN 'BS' ELSE 'PL' END;";
            return DbResultSetter(query, param);

        });

        List<Map<String, Object>> result = new ArrayList<>();
        try {
            List<Future<List<Map<String, Object>>>> futureList = execServ.invokeAll(lsCall);
            futureList.forEach(d -> {
                try {
                    result.addAll(d.get());
                } catch (InterruptedException | ExecutionException ex) {
                    Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
                }
            });
        } catch (InterruptedException ex) {
            Logger.getLogger(DatabaseViews.class.getName()).log(Level.SEVERE, null, ex);
        }

        return result;

    }

    public List<Map<String, Object>> getAccount() {
        String query = "SELECT * FROM TB_ACC ORDER BY ACC_CODE ASC";
        return DbResultSetter(query, new Object[]{});
    }

    private List<Map<String, Object>> DbResultSetter(String query, Object[] param) {
        try ( Connection con = new Dbconnection().cn();  PreparedStatement ps = con.prepareStatement(query)) {
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
