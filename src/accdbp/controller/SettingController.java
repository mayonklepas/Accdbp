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
import accdbp.view.SettingView;
import java.awt.KeyEventDispatcher;
import java.awt.KeyboardFocusManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JDialog;
import javax.swing.SwingUtilities;

/**
 *
 * @author Minami
 */
public class SettingController {

    SettingView pane;
    Dbconnection c = new Dbconnection();

    public SettingController(SettingView pane) {
        this.pane = pane;
        Staticvar.keydis = new KeyEventDispatcher() {
            @Override
            public boolean dispatchKeyEvent(KeyEvent e) {
                if (e.getID() == KeyEvent.KEY_PRESSED) {
                    if (e.getKeyCode() == KeyEvent.VK_F4) {
                        pane.bcancel.doClick();
                    } else if ((e.getKeyCode() == KeyEvent.VK_S) && (e.isControlDown())) {
                        pane.bsave.doClick();
                    }

                }
                return false;
            }
        };
        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
        loaddata();
        savedata();
        backupAndClearData();
        cancel();
    }

    private void loaddata() {
        try {
            String query = "SELECT COMPANY_NAME,COMPANY_ADDRESS,COMPANY_TELEPHONE FROM TB_INFO WHERE ID=1";
            PreparedStatement pre = c.cn().prepareStatement(query);
            ResultSet res = pre.executeQuery();
            res.next();
            pane.edcompanyname.setText(res.getString("COMPANY_NAME"));
            pane.edcompanyaddress.setText(res.getString("COMPANY_ADDRESS"));
            pane.edcompanytelp.setText(res.getString("COMPANY_TELEPHONE"));
            pre.close();
            res.close();
            c.dc();
            pane.edusername.setText(Staticvar.username);
        } catch (SQLException ex) {
            OneforAllfunc.info("Error", ex.getMessage());
            Logger.getLogger(SettingController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void savedata() {
        pane.bsave.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try (Statement st = c.cn().createStatement()) {
                    String queryupdatecompany = "UPDATE TB_INFO SET COMPANY_NAME='" + pane.edcompanyname.getText() + "',"
                            + "COMPANY_ADDRESS='" + pane.edcompanyaddress.getText() + "',"
                            + "COMPANY_TELEPHONE='" + pane.edcompanytelp.getText() + "'";
                    st.addBatch(queryupdatecompany);
                    if (pane.edrepassword.getText().equals("")) {

                    } else {
                        if (pane.edrepassword.getText().equals(pane.ednewpassword.getText())) {
                            String queryupdateuser = "UPDATE TB_USER SET U_USERNAME='" + pane.edusername.getText() + "',"
                                    + "U_PASSWORD='" + OneforAllfunc.shahash256(pane.edrepassword.getText()) + "' WHERE U_USERNAME='" + Staticvar.username + "'";
                            st.addBatch(queryupdateuser);
                        } else {
                            OneforAllfunc.info("Operation Failed", "Password Not Match");
                        }

                    }
                    st.executeBatch();
                    OneforAllfunc.info("Operation Sucsess", "Company Info Has Been Update");
                    c.cn().close();
                } catch (SQLException ex) {
                    OneforAllfunc.info("Error", ex.getMessage());
                    Logger.getLogger(SettingController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        });

    }

    private void backupAndClearData() {
        pane.bClearTrxData.addActionListener((e) -> {
            OneforAllfunc.confirmwitpass("Confirmation", "All transaction data will be cleared");
            if (Staticvar.isyes == true) {
                Staticvar.isyes = false;
                try (Statement st = c.cn().createStatement()) {
                    st.addBatch("TRUNCATE TABLE TB_BP_MASTER");
                    st.addBatch("TRUNCATE TABLE TB_BP_DETAIL");
                    st.addBatch("TRUNCATE TABLE TB_CP_MASTER");
                    st.addBatch("TRUNCATE TABLE TB_CP_DETAIL");
                    st.addBatch("TRUNCATE TABLE TB_BR_MASTER");
                    st.addBatch("TRUNCATE TABLE TB_BR_DETAIL");
                    st.addBatch("TRUNCATE TABLE TB_CR_MASTER");
                    st.addBatch("TRUNCATE TABLE TB_CR_DETAIL");
                    st.addBatch("TRUNCATE TABLE TB_JOURNAL_MASTER");
                    st.addBatch("TRUNCATE TABLE TB_JOURNAL_DETAIL");
                    st.executeBatch();
                    OneforAllfunc.info("Operation Sucsess", "Data has been cleared");
                    c.cn().close();
                } catch (SQLException ex) {
                    OneforAllfunc.info("Error", ex.getMessage());
                    Logger.getLogger(SettingController.class.getName()).log(Level.SEVERE, null, ex);
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
}
