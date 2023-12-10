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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author mulyadi
 */
public class DatabaseViews {

    public List<Map<String, Object>> getAllTransByYear(int year) {
        String query = "(SELECT \n"
                + "    CPD_ID AS ID,\n"
                + "    CPD_DATE_CREATED AS DATE_CREATED,\n"
                + "    'CP' AS DOC_TYPE,\n"
                + "    CPM_DATE_TRANS AS DATE_TRANS,\n"
                + "    CRP_DOC_NO AS DOC_NO,\n"
                + "    CPM_REF_NO AS REF_NO,\n"
                + "    CPD_CPM_MASTER AS DOC_NO_2,\n"
                + "    COALESCE(CPD_AMOUNT, 0) AS CREDIT,\n"
                + "    COALESCE(CPD_AMOUNT_DEBIT, 0) AS DEBIT,\n"
                + "    CPD_SALDO AS SALDO,\n"
                + "    CPD_SALDO_MASTER AS SALDO_MASTER,\n"
                + "    CPD_DESC AS DESCRIPTION,\n"
                + "    CPD_ACC AS ACC_CODE,\n"
                + "    TB_CP_MASTER.CPM_ACC AS ACC_CODE_MASTER\n"
                + "FROM TB_CP_DETAIL\n"
                + "INNER JOIN TB_CP_MASTER\n"
                + "    ON TB_CP_DETAIL.CPD_CPM_MASTER=TB_CP_MASTER.CRP_DOC_NO \n"
                + "WHERE EXTRACT(YEAR FROM TB_CP_MASTER.CPM_DATE_TRANS) = ?)\n"
                + "UNION\n"
                + "(SELECT\n"
                + "    CRD_ID,\n"
                + "    CRD_DATE_CREATED,\n"
                + "    'CR' AS DOC_TYPE,\n"
                + "    CRM_DATE_TRANS,\n"
                + "    CRM_DOC_NO,\n"
                + "    CRM_REF_NO,\n"
                + "    CRD_CRM_MASTER,\n"
                + "    COALESCE(CRD_AMOUNT_KREDIT, 0) AS CREDIT,\n"
                + "    COALESCE(CRD_AMOUNT, 0) AS DEBIT,\n"
                + "    CRD_SALDO,\n"
                + "    CRD_SALDO_MASTER,\n"
                + "    CRD_DESC,\n"
                + "    CRD_ACC,\n"
                + "    TB_CR_MASTER.CRM_ACC \n"
                + "FROM TB_CR_DETAIL\n"
                + "INNER JOIN TB_CR_MASTER\n"
                + "    ON TB_CR_DETAIL.CRD_CRM_MASTER =TB_CR_MASTER.CRM_DOC_NO \n"
                + "WHERE EXTRACT(YEAR FROM TB_CR_MASTER.CRM_DATE_TRANS) = ?)\n"
                + "UNION\n"
                + "(SELECT\n"
                + "    BPD_ID,\n"
                + "    BPD_DATE_CREATED,\n"
                + "    'BP' AS DOC_TYPE,\n"
                + "    BPM_DATE_TRANS,\n"
                + "    BPM_DOC_NO,\n"
                + "    BPM_REF_NO,\n"
                + "    BPD_BPM_MASTER,\n"
                + "    COALESCE(BPD_AMOUNT, 0) AS CREDIT,\n"
                + "    COALESCE(BPD_AMOUNT_DEBIT, 0) AS DEBIT,\n"
                + "    BPD_SALDO,\n"
                + "    BPD_SALDO_MASTER,\n"
                + "    BPD_DESC,\n"
                + "    BPD_ACC,\n"
                + "    TB_BP_MASTER.BPM_ACC \n"
                + "FROM TB_BP_DETAIL\n"
                + "INNER JOIN TB_BP_MASTER\n"
                + "    ON TB_BP_DETAIL.BPD_BPM_MASTER = TB_BP_MASTER.BPM_DOC_NO  \n"
                + "WHERE EXTRACT(YEAR FROM TB_BP_MASTER.BPM_DATE_TRANS) = ?)\n"
                + "UNION\n"
                + "\n"
                + "(SELECT\n"
                + "    BRD_ID,\n"
                + "    BRD_DATE_CREATED,\n"
                + "    'BR' AS DOC_TYPE,\n"
                + "    BRM_DATE_TRANS,\n"
                + "    BRM_DOC_NO,\n"
                + "    BRM_REF_NO,\n"
                + "    BRD_BRM_MASTER,\n"
                + "    COALESCE(BRD_AMOUNT_KREDIT, 0) AS CREDIT,\n"
                + "    COALESCE(BRD_AMOUNT, 0) AS DEBIT,\n"
                + "    BRD_SALDO,\n"
                + "    BRD_SALDO_MASTER,\n"
                + "    BRD_DESC,\n"
                + "    BRD_ACC,\n"
                + "    TB_BR_MASTER.BRM_ACC \n"
                + "FROM TB_BR_DETAIL\n"
                + "INNER JOIN TB_BR_MASTER\n"
                + "    ON TB_BR_DETAIL.BRD_BRM_MASTER = TB_BR_MASTER.BRM_DOC_NO\n"
                + "WHERE EXTRACT(YEAR FROM TB_BR_MASTER.BRM_DATE_TRANS) = ?)\n"
                + "UNION\n"
                + "\n"
                + "(SELECT\n"
                + "    JD_ID,\n"
                + "    JD_DATE_CREATED,\n"
                + "    CASE JM_TYPE WHEN 0 THEN 'GJ' WHEN 1 THEN 'PJ' ELSE 'SJ' END AS DOC_TYPE,\n"
                + "    JM_DATE_TRANS,\n"
                + "    JM_DOC_NO,\n"
                + "    JM_REF_NO,\n"
                + "    JD_JM_MASTER,\n"
                + "    COALESCE(JD_AMOUNT_KREDIT, 0) AS CREDIT,\n"
                + "    COALESCE(JD_AMOUNT_DEBIT, 0) AS DEBIT,\n"
                + "    JD_SALDO,\n"
                + "    JD_SALDO,\n"
                + "    JD_DESC,\n"
                + "    JD_ACC,\n"
                + "    JD_ACC \n"
                + "FROM TB_JOURNAL_DETAIL\n"
                + "INNER JOIN TB_JOURNAL_MASTER\n"
                + "    ON TB_JOURNAL_DETAIL.JD_JM_MASTER = TB_JOURNAL_MASTER.JM_DOC_NO\n"
                + "WHERE EXTRACT(YEAR FROM TB_JOURNAL_MASTER.JM_DATE_TRANS) = ?);";

        Object[] param = new Object[]{year, year, year, year,year};
        return DbResultSetter(query, param);

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
                    String columnName = metaData.getColumnLabel(i+1);
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
