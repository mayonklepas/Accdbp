/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import accdbp.helper.Dbconnection;
import accdbp.helper.OneforAllfunc;
import accdbp.helper.Staticvar;
import accdbp.view.AccountsOpView;
import accdbp.view.AccountsView;
import accdbp.view.CashReceiptOpView;
import accdbp.view.CashReceiptView;
import accdbp.view.Home;
import java.awt.Color;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.KeyEventDispatcher;
import java.awt.KeyboardFocusManager;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableColumnModel;

/**
 *
 * @author Minami
 */
public class CashReceiptCn {

    CashReceiptView pane;
    Dbconnection c = new Dbconnection();
    DefaultTableModel dtm = new DefaultTableModel();

    public CashReceiptCn(CashReceiptView pane) {
        this.pane = pane;
        setkeydis();
        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
        loadheader();
        loaddata();
        insertdata();
        updatedata();
        deletedatanew();
        finddata();
        reload();
    }

    private void loadheader() {
        pane.tabledata.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        pane.tabledata.setDefaultEditor(Object.class, null);
        JTableHeader jthead = pane.tabledata.getTableHeader();
        jthead.setFont(new Font("Century Gothic", Font.BOLD, 14));
        pane.tabledata.setRowHeight(23);
        dtm.addColumn("No. Doc");
        dtm.addColumn("Date Trans");
        dtm.addColumn("No. Ref");
        dtm.addColumn("Date Ref");
        dtm.addColumn("Account");
        dtm.addColumn("Total Amount");
        pane.tabledata.setModel(dtm);
        DefaultTableCellRenderer rightrender = new DefaultTableCellRenderer();
        rightrender.setHorizontalAlignment(DefaultTableCellRenderer.RIGHT);
        pane.tabledata.getColumn("Total Amount").setCellRenderer(rightrender);
    }

    private void loaddata() {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                pane.tabledata.clearSelection();
                dtm.getDataVector().removeAllElements();
                dtm.fireTableDataChanged();
                try {
                    String query = "SELECT  a.CRM_DOC_NO, a.CRM_DATE_TRANS, a.CRM_REF_NO, a.CRM_DATE_REF, "
                         + "a.CRM_ACC,b.ACC_NAME,a.CRM_DATE_CREATED,(SELECT SUM(CRD_AMOUNT) FROM TB_CR_DETAIL WHERE CRD_CRM_MASTER=a.CRM_DOC_NO) AS TOTAL"
                         + " FROM TB_CR_MASTER a INNER JOIN TB_ACC b ON a.CRM_ACC=b.ACC_CODE ORDER BY a.CRM_DOC_NO DESC";
                    PreparedStatement pres = c.cn().prepareStatement(query);
                    ResultSet res = pres.executeQuery();
                    while (res.next()) {
                        Object o[] = new Object[6];
                        o[0] = res.getString("CRM_DOC_NO");
                        o[1] = OneforAllfunc.dateviewtable(res.getDate("CRM_DATE_TRANS"));
                        o[2] = res.getString("CRM_REF_NO");
                        o[3] = OneforAllfunc.dateviewtable(res.getDate("CRM_DATE_REF"));
                        o[4] = res.getString("ACC_NAME");
                        o[5] = OneforAllfunc.nf(res.getDouble("TOTAL"));
                        dtm.addRow(o);
                    }
                    pane.tabledata.setModel(dtm);
                    c.dc();
                } catch (SQLException ex) {
                    OneforAllfunc.info("Error", ex.getMessage());
                    Logger.getLogger(CashReceiptCn.class.getName()).log(Level.SEVERE, null, ex);

                    c.dc();
                }
                int recdata = (int) OneforAllfunc.getrecandsum("TB_CR_DETAIL", "CRD_AMOUNT").get("recdata");
                double sumdata = (double) OneforAllfunc.getrecandsum("TB_CR_DETAIL", "CRD_AMOUNT").get("sumdata");
                pane.lcountdata.setText("Record Count : " + recdata);
                pane.ltotalamount.setText("Total Amount : " + OneforAllfunc.nfcurrency(sumdata));
            }
        });

    }

    private void insertdata() {
        pane.badd.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                CashReceiptOpCn.id = "";
                JDialog jd = new JDialog(new Home());
                jd.setResizable(false);
                jd.setTitle("Cash Receipt Operation");
                jd.add(new CashReceiptOpView());
                Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
                int h = (int) (screenSize.getHeight() - 50);
                int w = (int) screenSize.getWidth();
                jd.setSize(w, h);
                jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                jd.setLocationRelativeTo(null);
                jd.setVisible(true);
                jd.toFront();
                if (Staticvar.isupdate == true) {
                    Staticvar.isupdate = false;
                    loaddata();
                }
                setkeydis();
                KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
            }
        });

    }

    private void updatedata() {
        pane.bedit.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = pane.tabledata.getSelectedRow();
                if (row < 0) {
                    OneforAllfunc.info("Operation Failed", "Please Select Data");
                } else {
                    KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                    String val = String.valueOf(pane.tabledata.getValueAt(row, 0));
                    CashReceiptOpCn.id = val;
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Cash Receipt Operation");
                    jd.add(new CashReceiptOpView());
                    Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
                    int h = (int) (screenSize.getHeight() - 50);
                    int w = (int) screenSize.getWidth();
                    jd.setSize(w, h);
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isupdate == true) {
                        Staticvar.isupdate = false;
                        loaddata();
                    }
                    setkeydis();
                    KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
                }
            }
        });
    }

    private void deletedata() {
        pane.bdelete.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (pane.tabledata.getSelectedRow() < 0) {
                    OneforAllfunc.info("Operation Failed", "Please Select Data");
                } else {
                    try {
                        OneforAllfunc.confirmwitpass("Are you sure to delete this data?", "Deleted data cannot be recover");
                        if (Staticvar.isyes == true) {
                            Staticvar.isyes = false;
                            int row = pane.tabledata.getSelectedRow();
                            String value = String.valueOf(pane.tabledata.getValueAt(row, 0));

                            String acc_code = "";
                            String querygetacchead = "SELECT CRM_ACC AS COD FROM TB_CR_MASTER WHERE CRM_DOC_NO=?";
                            PreparedStatement presacchead = c.cn().prepareStatement(querygetacchead);
                            presacchead.setString(1, value);
                            ResultSet resacchead = presacchead.executeQuery();
                            resacchead.next();
                            acc_code = resacchead.getString("COD");
                            presacchead.close();
                            resacchead.close();

                            Statement st = c.cn().createStatement();

                            String queryupopbal = "UPDATE TB_ACC SET ACC_OPENING_BALANCE=ACC_OPENING_BALANCE-"
                                 + "(SELECT SUM(CRD_AMOUNT) FROM TB_CR_DETAIL WHERE CRD_CRM_MASTER='" + value + "') "
                                 + "WHERE ACC_CODE='" + acc_code + "' ";
                            st.addBatch(queryupopbal);

                            String queryseldel = "SELECT CRD_ID,CRD_AMOUNT,CRD_ACC FROM TB_CR_DETAIL WHERE CRD_CRM_MASTER=?";
                            PreparedStatement preseldel = c.cn().prepareStatement(queryseldel);
                            preseldel.setString(1, value);
                            ResultSet reseldel = preseldel.executeQuery();
                            while (reseldel.next()) {
                                String queryupdetail = "UPDATE TB_ACC SET ACC_OPENING_BALANCE =(SELECT ACC_OPENING_BALANCE FROM TB_ACC "
                                     + "WHERE ACC_CODE='" + reseldel.getString("CRD_ACC") + "')+" + reseldel.getDouble("CRD_AMOUNT") + " "
                                     + "WHERE ACC_CODE='" + reseldel.getString("CRD_ACC") + "'";
                                st.addBatch(queryupdetail);
                                String querydeldetail = "DELETE FROM TB_CR_DETAIL WHERE CRD_ID = '" + reseldel.getString("CRD_ID") + "'";
                                st.addBatch(querydeldetail);
                            }
                            String querydelmaster = "DELETE FROM TB_CR_MASTER WHERE CRM_DOC_NO = '" + value + "'";
                            st.addBatch(querydelmaster);
                            st.executeBatch();
                            st.close();
                            c.dc();
                            loaddata();
                        }

                    } catch (SQLException ex) {
                        OneforAllfunc.info("Error", ex.getMessage());
                        Logger.getLogger(CashReceiptCn.class.getName()).log(Level.SEVERE, null, ex);

                    }
                }
            }
        });

    }

    private void deletedatanew() {
        pane.bdelete.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (pane.tabledata.getSelectedRow() < 0) {
                    OneforAllfunc.info("Operation Failed", "Please Select Data");
                } else {
                    try {
                        OneforAllfunc.confirmwitpass("Are you sure to delete this data?", "Deleted data cannot be recover");
                        if (Staticvar.isyes == true) {
                            Staticvar.isyes = false;
                            int row = pane.tabledata.getSelectedRow();
                            String value = String.valueOf(pane.tabledata.getValueAt(row, 0));
                            Statement st = c.cn().createStatement();
                            String querydeldetail = "DELETE FROM TB_CR_DETAIL WHERE CRD_CRM_MASTER = '" + value + "'";
                            st.addBatch(querydeldetail);
                            String querydelmaster = "DELETE FROM TB_CR_MASTER WHERE CRM_DOC_NO = '" + value + "'";
                            st.addBatch(querydelmaster);
                            st.executeBatch();
                            st.close();
                            c.dc();
                            loaddata();
                        }

                    } catch (SQLException ex) {
                        OneforAllfunc.info("Error", ex.getMessage());
                        Logger.getLogger(BankPaymentCn.class.getName()).log(Level.SEVERE, null, ex);

                    }
                }
            }
        });

    }

    private void finddata() {

        FocusAdapter fodap = new FocusAdapter() {
            @Override
            public void focusGained(FocusEvent e) {
                pane.edfind.setText("");
                pane.edfind.setForeground(Color.BLACK);
            }

            @Override
            public void focusLost(FocusEvent e) {
                pane.edfind.setText("Type and Enter to Find Data");
                pane.edfind.setForeground(Color.GRAY);
            }

        };

        KeyAdapter keyadap = new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                if (e.getKeyCode() == KeyEvent.VK_ENTER) {
                    SwingUtilities.invokeLater(new Runnable() {
                        @Override
                        public void run() {

                            pane.tabledata.clearSelection();
                            dtm.getDataVector().removeAllElements();
                            dtm.fireTableDataChanged();
                            try {
                                String query = "SELECT  a.CRM_DOC_NO, a.CRM_DATE_TRANS, a.CRM_REF_NO, a.CRM_DATE_REF, "
                                     + "a.CRM_ACC,b.ACC_NAME,a.CRM_DATE_CREATED,"
                                     + "(SELECT SUM(CRD_AMOUNT) FROM TB_CR_DETAIL WHERE CRD_CRM_MASTER=a.CRM_DOC_NO) AS TOTAL"
                                     + " FROM TB_CR_MASTER a "
                                     + "INNER JOIN TB_ACC b ON a.CRM_ACC=b.ACC_CODE "
                                     + "WHERE lower(a.CRM_DOC_NO) LIKE ? "
                                     + "OR lower(a.CRM_REF_NO) LIKE ? "
                                     + "OR lower(b.ACC_NAME) LIKE ? "
                                     + "OR CAST(a.CRM_DATE_TRANS AS VARCHAR(100)) LIKE ?  ORDER BY a.CRM_DOC_NO DESC";
                                PreparedStatement pres = c.cn().prepareStatement(query);
                                pres.setString(1, "%" + pane.edfind.getText().toLowerCase() + "%");
                                pres.setString(2, "%" + pane.edfind.getText().toLowerCase() + "%");
                                pres.setString(3, "%" + pane.edfind.getText().toLowerCase() + "%");
                                pres.setString(4, "%" + pane.edfind.getText() + "%");
                                ResultSet res = pres.executeQuery();
                                while (res.next()) {
                                    Object o[] = new Object[6];
                                    o[0] = res.getString("CRM_DOC_NO");
                                    o[1] = OneforAllfunc.dateviewtable(res.getDate("CRM_DATE_TRANS"));
                                    o[2] = res.getString("CRM_REF_NO");
                                    o[3] = OneforAllfunc.dateviewtable(res.getDate("CRM_DATE_REF"));
                                    o[4] = res.getString("ACC_NAME");
                                    o[5] = OneforAllfunc.nf(res.getDouble("TOTAL"));
                                    dtm.addRow(o);
                                }
                                pane.tabledata.setModel(dtm);
                                c.dc();
                            } catch (SQLException ex) {
                                OneforAllfunc.info("Error", ex.getMessage());
                                Logger.getLogger(CashReceiptCn.class.getName()).log(Level.SEVERE, null, ex);

                                c.dc();
                            }
                            pane.lcountdata.setText("Record Count : " + pane.tabledata.getRowCount());
                            double total_amount = 0;
                            for (int i = 0; i < pane.tabledata.getRowCount(); i++) {
                                total_amount = total_amount + OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 5)));
                            }

                            pane.ltotalamount.setText("Total Amount : " + OneforAllfunc.nfcurrency(total_amount));
                        }
                    });

                }
            }

        };
        pane.edfind.addKeyListener(keyadap);
        pane.edfind.addFocusListener(fodap);
    }

    private void reload() {
        pane.brefresh.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
                loaddata();
                pane.brefresh.requestFocus();
            }
        });
    }

    private void setkeydis() {
        Staticvar.keydis = new KeyEventDispatcher() {
            @Override
            public boolean dispatchKeyEvent(KeyEvent e) {
                if (e.getID() == KeyEvent.KEY_PRESSED) {
                    if ((e.isControlDown()) && (e.getKeyCode() == KeyEvent.VK_F)) {
                        pane.edfind.requestFocus();
                    } else if (e.getKeyCode() == KeyEvent.VK_F5) {
                        loaddata();
                    } else if ((e.isControlDown()) && (e.getKeyCode() == KeyEvent.VK_A)) {
                        pane.badd.doClick();
                    } else if ((e.isControlDown()) && (e.getKeyCode() == KeyEvent.VK_E)) {
                        pane.bedit.doClick();
                    }
                    if (e.getKeyCode() == KeyEvent.VK_DELETE) {
                        pane.bdelete.doClick();
                    }
                    if (e.getKeyCode() == KeyEvent.VK_DOWN) {
                        pane.tabledata.requestFocus();
                    }
                }
                return false;
            }
        };
    }

}
