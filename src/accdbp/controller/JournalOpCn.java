/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import accdbp.helper.Dbconnection;
import accdbp.helper.OneforAllfunc;
import accdbp.helper.Staticvar;
import accdbp.view.JournalOpView;
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
import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.DefaultCellEditor;
import javax.swing.JDialog;
import javax.swing.JFileChooser;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.KeyStroke;
import javax.swing.ListSelectionModel;
import javax.swing.SwingUtilities;
import javax.swing.event.TableModelEvent;
import javax.swing.event.TableModelListener;
import javax.swing.filechooser.FileNameExtensionFilter;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.JTableHeader;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableColumnModel;
import javax.swing.table.TableModel;
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
public final class JournalOpCn {

    DefaultTableModel dtm = new DefaultTableModel();
    public static String id = "";
    String idtable;
    JournalOpView pane;
    Dbconnection c = new Dbconnection();
    private boolean terset = false;
    Object[] o = new Object[6];
    String oldaccountval = "";
    String oldaccountname = "";
    double total_debit = 0;
    double total_kredit = 0;

    public JournalOpCn(JournalOpView pane) {
        this.pane = pane;
        if (Staticvar.journaltype == 0) {
            pane.ljurnaltipe.setText("General Journal");
        } else if (Staticvar.journaltype == 1) {
            pane.ljurnaltipe.setText("Purchase Journal");
        } else {
            pane.ljurnaltipe.setText("Sale Journal");
        }
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
            //String prefix = OneforAllfunc.getmonth(new Date()) + OneforAllfunc.getyear2digit(new Date());
            //pane.eddoc_no.setText(OneforAllfunc.getautodocno(pane.eddate_trans.getDate()));
            pane.edref_no.setEditable(false);
            pane.edref_no.setEnabled(false);
            pane.eddoc_no.setEditable(false);
            pane.eddoc_no.setEnabled(false);
        } else {
            loaddata();
        }
        tableoperation();
        savedata();
        cancel();
        checkperiode();
        importfromexcel();
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
                return column == 2 ? false : true;
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

    }

    private void loadheader() {
        pane.tabledata.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        JTableHeader jthead = pane.tabledata.getTableHeader();
        jthead.setFont(new Font("Century Gothic", Font.BOLD, 14));
        pane.tabledata.setRowHeight(23);
        dtm.addColumn("No Ref");
        dtm.addColumn("Acc Code");
        dtm.addColumn("Acc Name");
        dtm.addColumn("Debit");
        dtm.addColumn("Kredit");
        dtm.addColumn("Desc");
        pane.tabledata.setModel(dtm);
        DefaultTableCellRenderer rightrender = new DefaultTableCellRenderer();
        rightrender.setHorizontalAlignment(DefaultTableCellRenderer.RIGHT);
        pane.tabledata.getColumn("Debit").setCellRenderer(rightrender);
        pane.tabledata.getColumn("Kredit").setCellRenderer(rightrender);
        setheader();
    }

    private void setheader() {
        TableColumnModel tcm = pane.tabledata.getColumnModel();
        tcm.getColumn(0).setMinWidth(150);
        tcm.getColumn(0).setMaxWidth(120);
        tcm.getColumn(1).setMinWidth(100);
        tcm.getColumn(1).setMaxWidth(100);
        tcm.getColumn(2).setMinWidth(250);
        tcm.getColumn(2).setMaxWidth(250);
        tcm.getColumn(3).setMinWidth(200);
        tcm.getColumn(3).setMaxWidth(200);
        tcm.getColumn(4).setMinWidth(200);
        tcm.getColumn(4).setMaxWidth(200);
    }

    private void loaddata() {
        try {
            String query = "SELECT a.JM_DOC_NO, a.JM_DATE_TRANS, a.JM_REF_NO, a.JM_DATE_REF, "
                    + "a.JM_DATE_CREATED FROM TB_JOURNAL_MASTER a WHERE a.JM_DOC_NO=?";
            PreparedStatement pres = c.cn().prepareStatement(query);
            pres.setString(1, id);
            ResultSet res = pres.executeQuery();
            while (res.next()) {
                idtable = res.getString("JM_DOC_NO");
                pane.eddoc_no.setText(res.getString("JM_DOC_NO"));
                pane.eddate_trans.setDate(res.getDate("JM_DATE_TRANS"));
                pane.edref_no.setText(res.getString("JM_REF_NO"));
                pane.edref_date.setDate(res.getDate("JM_DATE_REF"));
            }
            c.dc();

            pane.tabledata.clearSelection();
            dtm.getDataVector().removeAllElements();
            dtm.fireTableDataChanged();
            String query2 = "SELECT a.JD_ID, a.JD_NO_REF,a.JD_JM_MASTER, a.JD_ACC,b.ACC_NAME, "
                    + "a.JD_AMOUNT_DEBIT,a.JD_AMOUNT_KREDIT, a.JD_DESC, a.JD_DATE_CREATED FROM "
                    + "TB_JOURNAL_DETAIL a INNER JOIN TB_ACC b ON a.JD_ACC=b.ACC_CODE "
                    + "WHERE a.JD_JM_MASTER = ?";
            PreparedStatement pres2 = c.cn().prepareStatement(query2);
            pres2.setString(1, id);
            ResultSet res2 = pres2.executeQuery();
            while (res2.next()) {
                o[0] = res2.getString("JD_NO_REF");
                o[1] = res2.getString("JD_ACC");
                o[2] = res2.getString("ACC_NAME");
                o[3] = OneforAllfunc.nf(res2.getDouble("JD_AMOUNT_DEBIT"));
                o[4] = OneforAllfunc.nf(res2.getDouble("JD_AMOUNT_KREDIT"));
                o[5] = res2.getString("JD_DESC");
                dtm.addRow(o);
            }
            for (int i = 0; i < o.length; i++) {
                o[i] = "";
            }
            c.dc();
            calctotal();
        } catch (SQLException ex) {
            OneforAllfunc.info("Error", ex.getMessage());
            Logger.getLogger(JournalOpCn.class.getName()).log(Level.SEVERE, null, ex);

        }
    }

    private void savedata() {
        pane.bsave.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (id.equals("")) {
                    try {

                        if (total_debit != total_kredit) {
                            OneforAllfunc.info("Operation Failed", "Amount not balance");
                            return;
                        }

                        List<String> lsNorefUnsort = new ArrayList<>();
                        for (int i = 0; i < pane.tabledata.getRowCount(); i++) {
                            String noref = String.valueOf(pane.tabledata.getValueAt(i, 0));
                            if (noref.equals("null") || noref.equals("")) {
                                continue;
                            }
                            lsNorefUnsort.add(noref);

                        }

                        List<String> lsNoref = lsNorefUnsort.stream().distinct().collect(Collectors.toList());
                        for (String noref : lsNoref) {
                            Statement st = c.cn().createStatement();
                            String docno = OneforAllfunc.getautodocno(new Date());
                            String queryin = "INSERT INTO TB_JOURNAL_MASTER (JM_DOC_NO, JM_DATE_TRANS, "
                                    + "JM_REF_NO, JM_DATE_REF,JM_TYPE) "
                                    + "VALUES ('" + docno + "',"
                                    + "'" + OneforAllfunc.datetodb(pane.eddate_trans.getDate()) + "',"
                                    + "'" + noref + "',"
                                    + "'" + OneforAllfunc.datetodb(pane.edref_date.getDate()) + "',"
                                    + "'" + Staticvar.journaltype + "');";
                            st.addBatch(queryin);
                            int rowcount = pane.tabledata.getRowCount();
                            for (int i = 0; i < rowcount; i++) {
                                String norefIn = String.valueOf(pane.tabledata.getValueAt(i, 0));
                                if (norefIn.equals(noref)) {
                                    double amount_debit = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 3)));
                                    double amount_credit = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 4)));
                                    String queryindetail = "INSERT INTO TB_JOURNAL_DETAIL (JD_ID, JD_JM_MASTER, "
                                            + "JD_NO_REF,JD_ACC, JD_AMOUNT_DEBIT,JD_AMOUNT_KREDIT,JD_DESC) "
                                            + "VALUES ('" + docno + i + "',"
                                            + "'" + docno + "',"
                                            + "'" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "',"
                                            + "'" + String.valueOf(pane.tabledata.getValueAt(i, 1)) + "',"
                                            + "" + String.valueOf(amount_debit) + ","
                                            + "" + String.valueOf(amount_credit) + ","
                                            + "'" + OneforAllfunc.sof(pane.tabledata.getValueAt(i, 5)) + "')";
                                    System.out.println(queryindetail);
                                    st.addBatch(queryindetail);
                                }

                            }

                            st.executeBatch();
                            st.close();
                        }

                        c.dc();
                        OneforAllfunc.info("Operation Success", "Data has been added");
                        KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                        Staticvar.isupdate = true;
                        JDialog jd = (JDialog) pane.getRootPane().getParent();
                        jd.dispose();

                    } catch (SQLException ex) {
                        OneforAllfunc.info("Error", ex.getMessage());
                        Logger.getLogger(BankPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);
                    } finally {
                        c.dc();
                    }

                } else {
                    try {
                        if (total_debit != total_kredit) {
                            OneforAllfunc.info("Operation Failed", "Amount not balance");
                        } else {
                            Statement st = c.cn().createStatement();
                            String queryup = "UPDATE TB_JOURNAL_MASTER SET "
                                    + "JM_DOC_NO='" + pane.eddoc_no.getText() + "', "
                                    + "JM_DATE_TRANS='" + OneforAllfunc.datetodb(pane.eddate_trans.getDate()) + "', "
                                    + "JM_REF_NO='" + pane.edref_no.getText() + "', "
                                    + "JM_DATE_REF='" + OneforAllfunc.datetodb(pane.edref_date.getDate()) + "'  "
                                    + "WHERE JM_DOC_NO='" + id + "'";
                            st.addBatch(queryup);

                            String querydel = "DELETE FROM TB_JOURNAL_DETAIL WHERE JD_JM_MASTER = '" + id + "'";
                            st.addBatch(querydel);

                            int rowcount = pane.tabledata.getRowCount();
                            for (int i = 0; i < rowcount; i++) {
                                if (String.valueOf(pane.tabledata.getValueAt(i, 0)).equals("")
                                        || String.valueOf(pane.tabledata.getValueAt(i, 0)).equals("null")) {

                                } else {
                                    double amount_debit = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 2)));
                                    double amount_credit = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 3)));
                                    String queryindetail = "INSERT INTO TB_JOURNAL_DETAIL (JD_ID, JD_JM_MASTER, "
                                            + "JD_NO_REF,JD_ACC, JD_AMOUNT_DEBIT,JD_AMOUNT_KREDIT, JD_DESC) "
                                            + "VALUES ('" + pane.eddoc_no.getText() + i + "',"
                                            + "'" + pane.eddoc_no.getText() + "',"
                                            + "'" + String.valueOf(pane.tabledata.getValueAt(i, 0)) + "',"
                                            + "'" + String.valueOf(pane.tabledata.getValueAt(i, 1)) + "',"
                                            + "" + String.valueOf(amount_debit) + ","
                                            + "" + String.valueOf(amount_credit) + ","
                                            + "'" + OneforAllfunc.sof(pane.tabledata.getValueAt(i, 5)) + "');";
                                    st.addBatch(queryindetail);

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
                        Logger.getLogger(JournalOpCn.class.getName()).log(Level.SEVERE, null, ex);
                    } finally {
                        c.dc();
                    }
                }

            }
        });

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
                    if (col == 1) {
                        try {
                            terset = true;
                            String query = "SELECT ACC_NAME FROM TB_ACC WHERE ACC_CODE=?";
                            PreparedStatement pres = c.cn().prepareStatement(query);
                            pres.setString(1, String.valueOf(tm.getValueAt(row, 1)));
                            ResultSet res = pres.executeQuery();
                            String resl = "";
                            while (res.next()) {
                                resl = String.valueOf(res.getString("ACC_NAME"));

                            }
                            if (resl.equals("") || resl.toLowerCase().equals("null")) {
                                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                                oldaccountval = String.valueOf(tm.getValueAt(row, 1));
                                oldaccountname = String.valueOf(tm.getValueAt(row, 2));
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
                                    tm.setValueAt(Staticvar.global_val, row, 1);
                                    tm.setValueAt(Staticvar.global_name, row, 2);
                                } else {
                                    tm.setValueAt(oldaccountval, row, 1);
                                    tm.setValueAt(oldaccountname, row, 2);
                                }
                                KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
                            } else {
                                tm.setValueAt(resl, row, 2);
                            }
                            pane.tabledata.requestFocus();
                            pane.tabledata.changeSelection(row, 3, false, false);
                        } catch (SQLException ex) {
                            Logger.getLogger(JournalOpCn.class.getName()).log(Level.SEVERE, null, ex);
                        } finally {
                            terset = false;
                        }
                    } else if (col == 3) {
                        try {
                            terset = true;
                            double amount = OneforAllfunc.doubleformat(String.valueOf(tm.getValueAt(row, 3)));
                            tm.setValueAt(OneforAllfunc.nf(amount), row, 3);
                            tm.setValueAt("0", row, 4);
                            calctotal();
                        } catch (Exception ex) {

                        } finally {
                            terset = false;
                        }

                    } else if (col == 4) {
                        try {
                            terset = true;
                            double amount = OneforAllfunc.doubleformat(String.valueOf(tm.getValueAt(row, 4)));
                            tm.setValueAt(OneforAllfunc.nf(amount), row, 4);
                            tm.setValueAt("0", row, 3);
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
                if (row >= 0) {
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

    private void calctotal() {
        int rowcount = pane.tabledata.getRowCount();
        total_debit = 0;
        total_kredit = 0;
        for (int i = 0; i < rowcount; i++) {
            double amount_debit = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 3)));
            total_debit = total_debit + amount_debit;
            double amount_kredit = OneforAllfunc.doubleformat(String.valueOf(pane.tabledata.getValueAt(i, 4)));
            total_kredit = total_kredit + amount_kredit;
        }
        pane.ldebittotal.setText(OneforAllfunc.nfcurrency(total_debit));
        pane.lkredit_total.setText(OneforAllfunc.nfcurrency(total_kredit));
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
                    //pane.eddoc_no.setText(OneforAllfunc.getautodocno(pane.eddate_trans.getDate()));
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

    private void importfromexcel() {
        pane.bImport.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFileChooser jfc = new JFileChooser("user.home");
                jfc.setFileFilter(new FileNameExtensionFilter("Office Excel Format", "xlsx"));
                if (jfc.showOpenDialog(pane) == JFileChooser.APPROVE_OPTION) {
                    try {
                        pane.tabledata.clearSelection();
                        dtm.getDataVector().removeAllElements();
                        dtm.fireTableDataChanged();
                        File selectfile = jfc.getSelectedFile();
                        Workbook wb = new XSSFWorkbook(new FileInputStream(selectfile));
                        Sheet sht = wb.getSheetAt(0);
                        Iterator<Row> itrrow = sht.iterator();
                        int rowcounter = 0;
                        while (itrrow.hasNext()) {
                            Row next = itrrow.next();
                            if (rowcounter > 0) {
                                Iterator<Cell> itrcell = next.iterator();
                                for (int i = 0; i < 5; i++) {
                                    String isi = "";
                                    try {
                                        Cell next1 = itrcell.next();
                                        if (next1.getCellType() == CellType.BLANK) {
                                            isi = "";
                                        } else if (next1.getCellType() == CellType.NUMERIC) {
                                            isi = OneforAllfunc.nf(next1.getNumericCellValue());
                                        } else if (next1.getCellType() == CellType.STRING) {
                                            isi = next1.getStringCellValue();
                                        }
                                    } catch (Exception ex) {
                                        isi = "";
                                    }

                                    if (i == 0) {
                                        o[0] = isi.replace(".", "");
                                    } else if (i == 1) {
                                        o[1] = isi.replace(".", "");
                                        Statement st = c.cn().createStatement();
                                        ResultSet res = st.executeQuery("SELECT ACC_NAME FROM TB_ACC WHERE ACC_CODE='" + isi.replace(".", "") + "'");
                                        if (res.first()) {
                                            o[2] = res.getString("ACC_NAME");
                                        } else {
                                            throw new RuntimeException("Account code ("+isi+") not found");
                                        }

                                    } else if (i == 2) {
                                        if (isi.equals("")) {
                                            o[3] = 0;
                                        } else {
                                            o[3] = isi;
                                        }
                                    } else if (i == 3) {
                                       if (isi.equals("")) {
                                            o[4] = 0;
                                        } else {
                                            o[4] = isi;
                                        }
                                    } else if (i == 4) {
                                        o[5] = isi;
                                    }
                                }
                                while (itrcell.hasNext()) {

                                }

                                dtm.addRow(o);
                            }

                            rowcounter++;
                        }

                        calctotal();

                    } catch (Exception ex) {
                        OneforAllfunc.info("Error file corrupt", ex.getMessage());
                        Logger.getLogger(CashPaymentOpCn.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        }
        );

    }

}
