/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import accdbp.helper.Dbconnection;
import accdbp.helper.OneforAllfunc;
import accdbp.helper.Staticvar;
import accdbp.view.LoginView;
import java.awt.KeyEventDispatcher;
import java.awt.KeyboardFocusManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JDialog;
import javax.swing.SwingUtilities;

/**
 *
 * @author Minami
 */
public class LoginCn {

    LoginView pane;
    Dbconnection c = new Dbconnection();

    public LoginCn(LoginView pane) {
        this.pane = pane;
        setkeydis();
        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
        login();
        cancel();
        pane.edmonth.setText(OneforAllfunc.getmonth(new java.util.Date()));
        pane.edyear.setText(OneforAllfunc.getyear(new java.util.Date()));
    }

    private void login() {
        pane.blogin.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String username = "";
                String password = "";
                int type = 0;
                try {
                    String query = "SELECT U_USERNAME,U_PASSWORD,U_TYPE FROM TB_USER WHERE U_USERNAME=? AND U_PASSWORD=?";
                    PreparedStatement pres = c.cn().prepareStatement(query);
                    pres.setString(1, pane.edusername.getText());
                    pres.setString(2, OneforAllfunc.shahash256(pane.edpassword.getText()));
                    ResultSet res = pres.executeQuery();
                    while (res.next()) {
                        username = res.getString("U_USERNAME");
                        password = res.getString("U_PASSWORD");
                        type = res.getInt("U_TYPE");
                    }
                    if (username.trim().equals("") || username.trim().equals("NULL")) {
                        KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                        OneforAllfunc.info("Permission Denied", "Username Or Password is wrong");
                        setkeydis();
                        KeyboardFocusManager.getCurrentKeyboardFocusManager().addKeyEventDispatcher(Staticvar.keydis);
                    } else {
                        KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                        String queryinfo = "SELECT COMPANY_NAME,COMPANY_ADDRESS,COMPANY_TELEPHONE FROM TB_INFO WHERE ID=1";
                        PreparedStatement preinfo = c.cn().prepareStatement(queryinfo);
                        ResultSet resinfo = preinfo.executeQuery();
                        resinfo.first();
                        Staticvar.company_name = resinfo.getString("COMPANY_NAME");
                        Staticvar.company_address = resinfo.getString("COMPANY_ADDRESS");
                        Staticvar.company_telp = resinfo.getString("COMPANY_TELEPHONE");
                        Staticvar.username = username;
                        Staticvar.password = pane.edpassword.getText();
                        Staticvar.type = type;
                        if (pane.edmonth.getText().length() == 1) {
                            Staticvar.month_periode = "0" + pane.edmonth.getText();
                        } else {
                            Staticvar.month_periode = pane.edmonth.getText();
                        }
                        Staticvar.year_periode = pane.edyear.getText();
                        JDialog jd = (JDialog) pane.getRootPane().getParent();
                        jd.dispose();

                    }

                } catch (SQLException ex) {
                    Logger.getLogger(LoginCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }
            }
        });
    }

    private void cancel() {
        pane.bcancell.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                System.exit(0);
            }
        });

        /*SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                JDialog jdin = (JDialog) pane.getRootPane().getParent();
                jdin.addWindowListener(new WindowAdapter() {
                    @Override
                    public void windowClosing(WindowEvent e) {
                        pane.bcancell.doClick();
                    }

                });
            }
        });*/
    }

    private void setkeydis() {
        Staticvar.keydis = new KeyEventDispatcher() {
            @Override
            public boolean dispatchKeyEvent(KeyEvent e) {
                if (e.getID() == KeyEvent.KEY_PRESSED) {
                    if (e.getKeyCode() == KeyEvent.VK_F4) {
                        pane.bcancell.doClick();
                    } else if (e.getKeyCode() == KeyEvent.VK_ENTER) {
                        pane.blogin.doClick();
                    }

                }
                return false;
            }
        };
    }
}
