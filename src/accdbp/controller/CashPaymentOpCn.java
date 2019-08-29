/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import static accdbp.controller.BankPaymentOpCn.id;
import accdbp.helper.Dbconnection;
import accdbp.helper.OneforAllfunc;
import accdbp.helper.Staticvar;
import accdbp.view.CashPaymentOpView;
import accdbp.view.Home;
import accdbp.view.PopupdatachooserView;
import java.awt.Component;
import java.awt.Dialog;
import java.awt.Font;
import java.awt.KeyEventDispatcher;
import java.awt.KeyboardFocusManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.beans.PropertyChangeEvent;
import java.beans.PropertyChangeListener;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.DefaultCellEditor;
import javax.swing.JDialog;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.ListSelectionModel;
import javax.swing.SwingUtilities;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;

/**
 *
 * @author Minami
 */
public final class CashPaymentOpCn {

    DefaultTableModel dtm = new DefaultTableModel();
    public static String id = "";
    String idtable;
    CashPaymentOpView pane;
    Dbconnection c = new Dbconnection();
    private boolean terset = false;
    Object[] o = new Object[4];
    String oldaccountval = "";
    String oldaccountname = "";
    double total_amount = 0;

    public CashPaymentOpCn(CashPaymentOpView pane) {
        this.pane = pane;
        Staticvar.keydis = new KeyEventDispatcher() {
            @Override
            public boolean dispatchKeyEvent(KeyEvent e) {
                if (e.getID() == KeyEvent.KEY_PRESSED) {
                    if (e.getKeyCode() == KeyEvent.VK_F4) {
                        pane.bcancel.doClick();
                    } else if ((e.getKeyCode() == KeyEvent.VK_S) && (e.isControlDown())) {
                        pane.bsave.doClick();
                    } else if ((e.getKeyCode() == KeyEvent.VK_DOWN) && (e.isControlDown())) {
                        pane.tabledata.requestFocus();
                        pane.tabledata.changeSelection(0, 0, false, false);
                    } else if (e.getKeyCode() == KeyEvent.VK_DOWN) {
                        pane.tabledata.requestFocus();
                    }

                }
                return false;
            }
        };
        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
        customtable();
        loadheader();
        skinning();
        if (id.equals("")) {
            dtm.addRow(o);
            pane.tabledata.setModel(dtm);
            String curmonth = OneforAllfunc.getmonth(new Date());
            String curyear = OneforAllfunc.getyear(new Date());
            if (curmonth.equals(Staticvar.month_periode) && curyear.equals(Staticvar.year_periode)) {
                pane.eddate_trans.setDate(new Date());
                pane.edref_date.setDate(new Date());
            } else {
                String setdate = Staticvar.year_periode + "-" + Staticvar.month_periode + "-1";
                Date dt = OneforAllfunc.datefromdb(setdate);
                pane.eddate_trans.setDate(dt);
                pane.edref_date.setDate(dt);
            }
            //String prefix = Staticvar.month_periode + Staticvar.year_periode.substring(2);
            String prefix = OneforAllfunc.getmonth(new Date()) + OneforAllfunc.getyear2digit(new Date());
            pane.eddoc_no.setText(OneforAllfunc.getautodocno(prefix));
            SwingUtilities.invokeLater(new Runnable() {
                @Override
                public void run() {
                    pane.edref_no.requestFocus();
                }
            });
        } else {
            pane.eddoc_no.setEnabled(false);
            pane.edaccount.setEnabled(false);
            loaddata();
            calctotaledit();
        }
        tableoperation();
        savedata();
        cancel();
        checkaccount();
        checkperiode();
    }

    private void skinning() {
        pane.eddate_trans.setDateFormatString("dd/MM/yyyy");
        pane.edref_date.setDateFormatString("dd/MM/yyyy");

    }

    private void customtable() {
        pane.tabledata.setRowSelectionAllowed(false);
        pane.tabledata.setCellSelectionEnabled(true);
        pane.tabledata.putClientProperty("terminateEditOnFocusLost", Boolean.TRUE);
        dtm = new DefaultTableModel() {
            @Override
            public boolean isCellEditable(int row, int column) {
                return column == 1 ? false : true;
            }

        };

        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                if (pane.tabledata.isEditing()) {
                    pane.tabledata.getCellEditor().cancelCellEditing();
                }
            }

        };

        pane.addMouseListener(ma);

        /*TableCellEditor tce = new DefaultCellEditor(new JTextField()) {
            @Override
            public Component getTableCellEditorComponent(JTable table, Object value, boolean isSelected, int row, int column) {
                delegate.setValue((editorComponent instanceof JTextField) ? null : value);
                return editorComponent;
            }

        };
        pane.tabledata.setDefaultEditor(Object.class, tce);*/
 /*for (int i = 0; i < Staticvar.keyholdnumeric.length; i++) {
            pane.tabledata.getInputMap().put(KeyStroke.getKeyStroke(Staticvar.keyholdnumeric[i]), "startEditing");
        }*/
    }

    private void loadheader() {
        pane.tabledata.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        JTableHeader jthead = pane.tabledata.getTableHeader();
        jthead.setFont(new Font("Century Gothic", Font.BOLD, 14));
        pane.tabledata.setRowHeight(23);
        dtm.addColumn("Acc Code");
        dtm.addColumn("Acc Name");
        dtm.addColumn("Amount");
        dtm.addColumn("Desc");
        pane.tabledata.setModel(dtm);
        DefaultTableCellRenderer rightrender = new DefaultTableCellRenderer();
        rightrender.setHorizontalAlignment(DefaultTableCellRenderer.RIGHT);
        pane.tabledata.getColumn("Amount").setCellRenderer(rightrender);
        setheader();
    }

    private void setheader() {
        TableColumnModel tcm = pane.tabledata.getColumnModel();
        tcm.getColumn(0).setMinWidth(80);
        tcm.getColumn(0).setMaxWidth(80);
        tcm.getColumn(2).setMinWidth(110);
        tcm.getColumn(2).setMaxWidth(110);
    }

    private void loaddata() {
        try {
            String query = "SELECT a.CRP_DOC_NO, a.CPM_DATE_TRANS, a.CPM_REF_NO, a.CPM_DATE_REF, "
                 + "a.CPM_ACC,b.ACC_NAME,a.CPM_DATE_CREATED FROM TB_CP_MASTER a "
                 + "INNER JOIN TB_ACC b ON a.CPM_ACC=b.ACC_CODE WHERE a.CRP_DOC_NO=?";
            PreparedStatement pres = c.cn().prepareStatement(query);
            pres.setString(1, id);
            ResultSet res = pres.executeQuery();
            while (res.next()) {
                idtable = res.getString("CRP_DOC_NO");
                pane.eddoc_no.setText(res.getString("CRP_DOC_NO"));
                pane.eddate_trans.setDate(res.getDate("CPM_DATE_TRANS"));
                pane.edref_no.setText(res.getString("CPM_REF_NO"));
                pane.edref_date.setDate(res.getDate("CPM_DATE_REF"));
                pane.edaccount.setText(res.getString("CPM_ACC"));
                pane.edaccountname.setText(res.getString("ACC_NAME"));
            }
            c.dc();

            pane.tabledata.clearSelection();
            dtm.getDataVector().removeAllElements();
            dtm.fireTableDataChanged();
            String query2 = "SELECT a.CPD_ID, a.CPD_CPM_MASTER, a.CPD_ACC,b.ACC_NAME, "
                 + "a.CPD_AMOUNT, a.CPD_DESC, a.CPD_DATE_CREATED FROM "
                 + "TB_CP_DETAIL a INNER JOIN TB_ACC b ON a.CPD_ACC=b.ACC_CODE "
                 + "WHERE a.CPD_CPM_MASTER = ?";
            PreparedStatement pres2 = c.cn().prepareStatement(query2);
            pres2.setString(1, id);
            ResultSet res2 = pres2.executeQuery();
            while (res2.next()) {
                o[0] = res2.getString("CPD_ACC");
                o[1] = res2.getString("ACC_NAME");
                o[2] = OneforAllfunc.nf(res2.getDouble("CPD_AMOUNT"));
                o[3] = res2.getString("CPD_DESC");
                dtm.addRow(o);
            }
            for (int i = 0; i < o.length; i++) {
                o[i] = "";
            }
            c.dc();
            calctotal();
        } catch (SQLException ex) {
            OneforAllfunc.info("Error", ex.getMessage());
            Logger.getLogger(CashPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    private void savedata() {
        pane.bsave.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (pane.eddoc_no.getText().equals("") || pane.edaccount.getText().equals("")) {
                    OneforAllfunc.info("Operation Failed", "Please Fill Account Code and Account name");
                } else {
                    if (id.equals("")) {
                        try {
                            if (OneforAllfunc.accountcheck(pane.edaccount.getText()) == false) {
                                OneforAllfunc.info("Operation Failed", "Account Code not found");
                            } else {
                                String query = "INSERT INTO TB_CP_MASTER (CRP_DOC_NO, CPM_DATE_TRANS, "
                                     + "CPM_REF_NO, CPM_DATE_REF,CPM_ACC) "
                                     + "VALUES ('" + pane.eddoc_no.getText() + "',"
                                     + "'" + OneforAllfunc.datetodb(pane.eddate_trans.getDate()) + "',"
                                     + "'" + pane.edref_no.getText() + "',"
                                     + "'" + OneforAllfunc.datetodb(pane.edref_date.getDate()) + "',"
                                     + "'" + pane.edaccount.getText() + "');";
                                Statement st = c.cn().createStatement();
                                st.addBatch(query);
                                int rowcount = pane.tabledata.getRowCount();
                                for (int i = 0; i < rowcount; i++) {
                                    if (String.valueOf(pane.tabledata.getValueAt(i, 0)).equals("")
                                         || String.valueOf(pane.tabledata.getValueAt(i, 0)).equals("null")) {

                                    } else {
                                        double amount = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 2)));

                                        String queryup = "UPDATE TB_ACC SET "
                                             + "ACC_OPENING_BALANCE=(SELECT ACC_OPENING_BALANCE FROM TB_ACC "
                                             + "WHERE ACC_CODE='" + pane.edaccount.getText() + "')-" + String.valueOf(amount) + " "
                                             + "WHERE ACC_CODE='" + pane.edaccount.getText() + "'";
                                        st.addBatch(queryup);

                                        String queryup2 = "UPDATE TB_ACC SET "
                                             + "ACC_OPENING_BALANCE=(SELECT ACC_OPENING_BALANCE FROM TB_ACC "
                                             + "WHERE ACC_CODE='" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "')+" + String.valueOf(amount) + " "
                                             + "WHERE ACC_CODE='" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "'";
                                        st.addBatch(queryup2);

                                        String queryin = "INSERT INTO TB_CP_DETAIL (CPD_ID, CPD_CPM_MASTER, "
                                             + "CPD_ACC, CPD_AMOUNT, CPD_DESC,CPD_SALDO,CPD_SALDO_MASTER) "
                                             + "VALUES ('" + pane.eddoc_no.getText() + i + "',"
                                             + "'" + pane.eddoc_no.getText() + "',"
                                             + "'" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "',"
                                             + "" + String.valueOf(amount) + ","
                                             + "'" + OneforAllfunc.sof(pane.tabledata.getValueAt(i, 3)) + "', "
                                             + "(SELECT ACC_OPENING_BALANCE FROM TB_ACC WHERE ACC_CODE='" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "'),"
                                             + "(SELECT ACC_OPENING_BALANCE FROM TB_ACC WHERE ACC_CODE='" + pane.edaccount.getText() + "'));";
                                        st.addBatch(queryin);

                                    }
                                }
                                st.executeBatch();
                                st.close();
                                c.dc();
                                OneforAllfunc.info("Operation Success", "Data has been added");
                                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                                Staticvar.isupdate = true;
                                JDialog jd = (JDialog) pane.getRootPane().getParent();
                                jd.dispose();
                            }
                        } catch (SQLException ex) {
                            OneforAllfunc.info("Error", ex.getMessage());
                            Logger.getLogger(CashPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);
                        } finally {
                            c.dc();
                        }

                    } else {
                        try {
                            if (OneforAllfunc.accountcheck(pane.edaccount.getText()) == false) {
                                OneforAllfunc.info("Operation Failed", "Account Code not found");
                            } else {

                                Statement st = c.cn().createStatement();

                                String query = "UPDATE TB_CP_MASTER SET "
                                     + "CRP_DOC_NO='" + pane.eddoc_no.getText() + "', "
                                     + "CPM_DATE_TRANS='" + OneforAllfunc.datetodb(pane.eddate_trans.getDate()) + "', "
                                     + "CPM_REF_NO='" + pane.edref_no.getText() + "', "
                                     + "CPM_DATE_REF='" + OneforAllfunc.datetodb(pane.edref_date.getDate()) + "', "
                                     + "CPM_ACC='" + pane.edaccount.getText() + "' "
                                     + "WHERE CRP_DOC_NO='" + id + "'";
                                st.addBatch(query);

                                String queryupbalance = "UPDATE TB_ACC SET "
                                     + "ACC_OPENING_BALANCE=ACC_OPENING_BALANCE+(SELECT SUM(CPD_AMOUNT) FROM TB_CP_DETAIL WHERE CPD_CPM_MASTER='" + id + "')"
                                     + "WHERE ACC_CODE='" + pane.edaccount.getText() + "'";
                                st.addBatch(queryupbalance);

                                String queryseldel = "SELECT CPD_ID,CPD_AMOUNT,CPD_ACC FROM TB_CP_DETAIL WHERE CPD_CPM_MASTER=?";
                                PreparedStatement preseldel = c.cn().prepareStatement(queryseldel);
                                preseldel.setString(1, id);
                                ResultSet reseldel = preseldel.executeQuery();
                                while (reseldel.next()) {
                                    String queryupdetail = "UPDATE TB_ACC SET ACC_OPENING_BALANCE =(SELECT ACC_OPENING_BALANCE FROM TB_ACC "
                                         + "WHERE ACC_CODE='" + reseldel.getString("CPD_ACC") + "')-" + reseldel.getDouble("CPD_AMOUNT") + " "
                                         + "WHERE ACC_CODE='" + reseldel.getString("CPD_ACC") + "'";
                                    st.addBatch(queryupdetail);
                                    String querydeldetail = "DELETE FROM TB_CP_DETAIL WHERE CPD_ID = '" + reseldel.getString("CPD_ID") + "'";
                                    st.addBatch(querydeldetail);
                                }

                                int rowcount = pane.tabledata.getRowCount();
                                for (int i = 0; i < rowcount; i++) {
                                    if (String.valueOf(pane.tabledata.getValueAt(i, 0)).equals("")
                                         || String.valueOf(pane.tabledata.getValueAt(i, 0)).equals("null")) {

                                    } else {
                                        double amount = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 2)));

                                        String queryup = "UPDATE TB_ACC SET "
                                             + "ACC_OPENING_BALANCE=(SELECT ACC_OPENING_BALANCE FROM TB_ACC "
                                             + "WHERE ACC_CODE='" + pane.edaccount.getText() + "')-" + String.valueOf(amount) + " "
                                             + "WHERE ACC_CODE='" + pane.edaccount.getText() + "'";
                                        st.addBatch(queryup);

                                        String queryup2 = "UPDATE TB_ACC SET "
                                             + "ACC_OPENING_BALANCE=(SELECT ACC_OPENING_BALANCE FROM TB_ACC "
                                             + "WHERE ACC_CODE='" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "')+" + String.valueOf(amount) + " "
                                             + "WHERE ACC_CODE='" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "'";
                                        st.addBatch(queryup2);

                                        String queryin = "INSERT INTO TB_CP_DETAIL (CPD_ID, CPD_CPM_MASTER, "
                                             + "CPD_ACC, CPD_AMOUNT, CPD_DESC,CPD_SALDO,CPD_SALDO_MASTER) "
                                             + "VALUES ('" + pane.eddoc_no.getText() + i + "',"
                                             + "'" + pane.eddoc_no.getText() + "',"
                                             + "'" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "',"
                                             + "" + String.valueOf(amount) + ","
                                             + "'" + OneforAllfunc.sof(pane.tabledata.getValueAt(i, 3)) + "', "
                                             + "(SELECT ACC_OPENING_BALANCE FROM TB_ACC WHERE ACC_CODE='" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "'),"
                                             + "(SELECT ACC_OPENING_BALANCE FROM TB_ACC WHERE ACC_CODE='" + pane.edaccount.getText() + "'));";
                                        st.addBatch(queryin);

                                    }
                                }
                                st.executeBatch();
                                st.close();
                                c.dc();
                                OneforAllfunc.info("Operation Success", "Data has been update");
                                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                                Staticvar.isupdate = true;
                                JDialog jd = (JDialog) pane.getRootPane().getParent();
                                jd.dispose();
                            }
                        } catch (SQLException ex) {
                            OneforAllfunc.info("Error", ex.getMessage());
                            Logger.getLogger(BankPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);
                        } finally {
                            c.dc();
                        }
                    }
                }
            }
        });

    }

    private void calctotaledit() {
        int rowcount = pane.tabledata.getRowCount();
        double total = 0;
        for (int i = 0; i < rowcount; i++) {
            double amount = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 2)));
            total = total + amount;
        }
        total_amount = total;
    }

    private void cancel() {
        pane.bcancel.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Staticvar.isupdate = false;
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                JDialog jd = (JDialog) pane.getRootPane().getParent();
                jd.dispose();
            }
        });

        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                JDialog jdin = (JDialog) pane.getRootPane().getParent();
                jdin.addWindowListener(new WindowAdapter() {
                    @Override
                    public void windowClosing(WindowEvent e) {
                        pane.bcancel.doClick();
                    }

                });
            }
        });
    }

    private void tableoperation() {

        TableModelListener tml = new TableModelListener() {
            @Override
            public void tableChanged(TableModelEvent e) {
                int row = e.getFirstRow();
                int col = e.getColumn();
                TableModel tm = (TableModel) e.getSource();
                if (e.getType() == TableModelEvent.UPDATE) {
                    if (terset) {
                        return;
                    }
                    if (col == 0) {
                        try {
                            terset = true;
                            String query = "SELECT ACC_NAME FROM TB_ACC WHERE ACC_CODE=?";
                            PreparedStatement pres = c.cn().prepareStatement(query);
                            pres.setString(1, String.valueOf(tm.getValueAt(row, 0)));
                            ResultSet res = pres.executeQuery();
                            String resl = "";
                            while (res.next()) {
                                resl = String.valueOf(res.getString("ACC_NAME"));

                            }
                            if (resl.equals("") || resl.toLowerCase().equals("null")) {
                                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                                oldaccountval = String.valueOf(tm.getValueAt(row, 0));
                                oldaccountname = String.valueOf(tm.getValueAt(row, 1));
                                JDialog jd = new JDialog(new Home());
                                jd.setResizable(false);
                                jd.setTitle("Select Account");
                                jd.add(new PopupdatachooserView(3));
                                jd.pack();
                                jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                                jd.setLocationRelativeTo(null);
                                jd.setVisible(true);
                                jd.toFront();
                                if (Staticvar.isupdate == true) {
                                    Staticvar.isupdate = false;
                                    tm.setValueAt(Staticvar.global_val, row, 0);
                                    tm.setValueAt(Staticvar.global_name, row, 1);
                                } else {
                                    tm.setValueAt(oldaccountval, row, 0);
                                    tm.setValueAt(oldaccountname, row, 1);
                                }
                                KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
                            } else {
                                tm.setValueAt(resl, row, 1);
                            }
                            pane.tabledata.requestFocus();
                            pane.tabledata.changeSelection(row, 2, false, false);
                        } catch (SQLException ex) {
                            Logger.getLogger(CashPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);
                        } finally {
                            terset = false;
                        }
                    } else if (col == 2) {
                        try {
                            terset = true;
                            double amount = OneforAllfunc.doubleformat(String.valueOf(tm.getValueAt(row, 2)));
                            tm.setValueAt(OneforAllfunc.nf(amount), row, 2);
                            calctotal();
                        } catch (Exception ex) {

                        } finally {
                            terset = false;
                        }

                    }
                    terset = false;
                }

            }
        };

        pane.tabledata.getModel().addTableModelListener(tml);

        pane.tabledata.getInputMap().put(KeyStroke.getKeyStroke("ENTER"), "enter");
        pane.tabledata.getActionMap().put("enter", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = pane.tabledata.getSelectedRow();
                int col = pane.tabledata.getSelectedColumn();
                if (pane.tabledata.editCellAt(row, col)) {
                    Component editor = pane.tabledata.getEditorComponent();
                    editor.requestFocusInWindow();
                }
            }
        });

        pane.tabledata.getInputMap().put(KeyStroke.getKeyStroke("DELETE"), "delete");
        pane.tabledata.getActionMap().put("delete", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = pane.tabledata.getSelectedRow();
                if (row > 0) {
                    OneforAllfunc.confirm("Want to remove Row?", "Removed Data cannot be recover ");
                    if (Staticvar.isyes == true) {
                        Staticvar.isyes = false;
                        SwingUtilities.invokeLater(new Runnable() {
                            @Override
                            public void run() {
                                dtm.removeRow(row);
                                dtm.fireTableDataChanged();
                                pane.tabledata.requestFocus();
                                pane.tabledata.changeSelection(row - 1, 0, false, false);
                                calctotal();
                            }
                        });

                    }
                }

            }
        });

        pane.tabledata.getInputMap().put(KeyStroke.getKeyStroke("RIGHT"), "right");
        pane.tabledata.getActionMap().put("right", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int col = pane.tabledata.getSelectedColumn();
                int row = pane.tabledata.getSelectedRow();
                nextcol(col, row);
            }
        });

        pane.tabledata.getInputMap().put(KeyStroke.getKeyStroke("LEFT"), "left");
        pane.tabledata.getActionMap().put("left", new AbstractAction() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int col = pane.tabledata.getSelectedColumn();
                int row = pane.tabledata.getSelectedRow();
                backcol(col, row);
            }
        });
    }

    private void nextcol(int col, int row) {
        try {
            int lastrow = pane.tabledata.getRowCount() - 1;
            int lastcol = pane.tabledata.getColumnCount() - 1;
            if (col == lastcol) {
                if (lastrow > row) {
                    pane.tabledata.requestFocus();
                    pane.tabledata.changeSelection(row + 1, 0, true, true);
                } else if (pane.tabledata.getValueAt(row, 0).equals("")
                     || pane.tabledata.getValueAt(row, 2).equals("")) {
                    OneforAllfunc.info("Operation Failed", "Account Code or Amount cannot be empty");
                } else {
                    addautorow(row);
                }
            } else {
                pane.tabledata.requestFocus();
                pane.tabledata.changeSelection(row, col + 1, true, true);
            }
        } catch (Exception e) {
            OneforAllfunc.info("Error", "Cell is null or Empty" + e.getMessage());
            e.printStackTrace();
        }

    }

    private void backcol(int col, int row) {
        int lastcol = pane.tabledata.getColumnCount() - 1;
        try {
            if (row > 0) {
                if (col == 0) {
                    pane.tabledata.requestFocus();
                    pane.tabledata.changeSelection(row - 1, lastcol, true, true);
                } else {
                    pane.tabledata.requestFocus();
                    pane.tabledata.changeSelection(row, col - 1, true, true);
                }
            } else {
                if (row == 0 && col == 0) {

                } else {
                    pane.tabledata.requestFocus();
                    pane.tabledata.changeSelection(row, col - 1, true, true);
                }

            }
        } catch (Exception e) {
            OneforAllfunc.info("Error", "Cell is null or Empty" + e.getMessage());
            e.printStackTrace();
        }

    }

    private void addautorow(int row) {
        int lastrow = pane.tabledata.getRowCount() - 1;
        if (!pane.tabledata.getValueAt(row, 0).equals("")
             || !pane.tabledata.getValueAt(row, 1).equals("")
             || !pane.tabledata.getValueAt(row, 2).equals("")) {
            if (row == lastrow) {
                dtm.addRow(o);
                pane.tabledata.requestFocus();
                pane.tabledata.changeSelection(row + 1, 0, false, false);
            }
        }
    }

    private void checkaccount() {
        pane.bcheck.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    String query = "SELECT ACC_NAME FROM TB_ACC WHERE ACC_CODE=?";
                    PreparedStatement pres = c.cn().prepareStatement(query);
                    pres.setString(1, pane.edaccount.getText());
                    ResultSet res = pres.executeQuery();
                    String resl = "";
                    while (res.next()) {
                        resl = String.valueOf(res.getString("ACC_NAME"));

                    }
                    if (resl.equals("") || resl.toLowerCase().equals("null")) {
                        KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                        oldaccountname = pane.edaccountname.getText();
                        oldaccountval = pane.edaccount.getText();
                        JDialog jd = new JDialog(new Home());
                        jd.setResizable(false);
                        jd.setTitle("Select Account");
                        jd.add(new PopupdatachooserView(0));
                        jd.pack();
                        jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                        jd.setLocationRelativeTo(null);
                        jd.setVisible(true);
                        jd.toFront();
                        if (Staticvar.isupdate == true) {
                            Staticvar.isupdate = false;
                            pane.edaccount.setText(Staticvar.global_val);
                            pane.edaccountname.setText(Staticvar.global_name);
                        } else {
                            pane.edaccountname.setText(oldaccountname);
                            pane.edaccount.setText(oldaccountval);
                        }
                        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
                    } else {
                        pane.edaccountname.setText(resl);
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(CashPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });

        KeyAdapter keadap = new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                if (e.getKeyCode() == KeyEvent.VK_ENTER) {
                    pane.bcheck.doClick();
                }
            }

        };

        pane.edaccount.addKeyListener(keadap);

    }

    private void calctotal() {
        int rowcount = pane.tabledata.getRowCount();
        double total = 0;
        for (int i = 0; i < rowcount; i++) {
            double amount = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 2)));
            total = total + amount;
        }
        pane.lgrandtotal.setText(OneforAllfunc.nfcurrency(total));
    }

    private void checkperiode() {
        pane.eddate_trans.getDateEditor().addPropertyChangeListener(new PropertyChangeListener() {
            @Override
            public void propertyChange(PropertyChangeEvent evt) {
                if (evt.getPropertyName().equals("date")) {
                    Date zaman_old = (Date) evt.getOldValue();
                    Date zaman_now = (Date) evt.getNewValue();
                    boolean month_analis = OneforAllfunc.getmonth(zaman_now).equals(Staticvar.month_periode);
                    boolean year_analis = OneforAllfunc.getyear(zaman_now).equals(Staticvar.year_periode);
                    if (month_analis == false) {
                        OneforAllfunc.info("Operation Failed", "Month not match with accounting periode");
                        pane.eddate_trans.setDate(zaman_old);
                    } else if (year_analis == false) {
                        OneforAllfunc.info("Operation Failed", "Year not match with accounting periode");
                        pane.eddate_trans.setDate(zaman_old);
                    }
                }
            }
        });
        pane.edref_date.getDateEditor().addPropertyChangeListener(new PropertyChangeListener() {
            @Override
            public void propertyChange(PropertyChangeEvent evt) {
                if (evt.getPropertyName().equals("date")) {
                    Date zaman_old = (Date) evt.getOldValue();
                    Date zaman_now = (Date) evt.getNewValue();
                    boolean month_analis = OneforAllfunc.getmonth(zaman_now).equals(Staticvar.month_periode);
                    boolean year_analis = OneforAllfunc.getyear(zaman_now).equals(Staticvar.year_periode);
                    if (month_analis == false) {
                        OneforAllfunc.info("Operation Failed", "Month not match with accounting periode");
                        pane.edref_date.setDate(zaman_old);
                    } else if (year_analis == false) {
                        OneforAllfunc.info("Operation Failed", "Year not match with accounting periode");
                        pane.edref_date.setDate(zaman_old);
                    }
                }
            }
        });
    }

}
