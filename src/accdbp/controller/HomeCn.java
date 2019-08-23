/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import accdbp.helper.Staticvar;
import accdbp.view.AccountsOpView;
import accdbp.view.AccountsView;
import accdbp.view.BankPaymentView;
import accdbp.view.BankReceiptView;
import accdbp.view.CashPaymentView;
import accdbp.view.CashReceiptView;
import accdbp.view.Home;
import accdbp.view.Homedef;
import accdbp.view.JournalView;
import accdbp.view.LoginView;
import accdbp.view.PaymentpaneView;
import accdbp.view.ReportView;
import accdbp.view.SettingView;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dialog;
import java.awt.Frame;
import java.awt.Insets;
import java.awt.KeyboardFocusManager;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusAdapter;
import java.awt.event.FocusEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.WindowConstants;

/**
 *
 * @author Minami
 */
public class HomeCn {

    Home hm = new Home();
    JDialog jdmenupay = new JDialog(new Home());

    public HomeCn() {
        hm.setTitle("Accounting PT David Bumi Perkasa");
        hm.setExtendedState(Frame.MAXIMIZED_BOTH);
        hm.setVisible(true);
        defview();
        homeview();
        accountsview();
        cashpayview();
        cashrecview();
        bankpayview();
        bankrecview();
        journalsgeneralview();
        journalspurchaseview();
        journalssaleview();
        reportview();
        settingview();
        skinning();
        jdmenupay.setResizable(false);
        jdmenupay.setUndecorated(true);
        jdmenupay.add(new PaymentpaneView());
        jdmenupay.pack();
        jdmenupay.setModalityType(Dialog.ModalityType.MODELESS);
        viewlogin();

    }

    private void defview() {
        Homedef homepane = new Homedef();
        hm.container.removeAll();
        hm.container.setLayout(new BorderLayout());
        hm.container.add(homepane, BorderLayout.CENTER);
        hm.container.revalidate();
        hm.container.repaint();
    }

    private void viewlogin() {
        JDialog jd = new JDialog(new Home());
        jd.setResizable(false);
        jd.setTitle("Login");
        jd.add(new LoginView());
        jd.pack();
        jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
        jd.setLocationRelativeTo(null);
        jd.setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);
        jd.setVisible(true);
        jd.toFront();
        hm.lacc_periode.setText("Accounting Periode : " + Staticvar.month_periode + "/" + Staticvar.year_periode);
    }

    private void skinning() {

        MouseAdapter mareport = new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                hm.preports.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                hm.preports.setBackground(Color.decode("#333333"));
            }

        };
        hm.preports.addMouseListener(mareport);

        MouseAdapter mahome = new MouseAdapter() {
            @Override
            public void mouseEntered(MouseEvent e) {
                hm.phome.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                hm.phome.setBackground(Color.decode("#333333"));
            }

        };
        hm.phome.addMouseListener(mahome);

    }

    private void homeview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                Homedef homepane = new Homedef();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(homepane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                hm.phome.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                hm.phome.setBackground(Color.decode("#333333"));
            }

        };
        hm.phome.addMouseListener(ma);
    }

    private void accountsview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                AccountsView akunpane = new AccountsView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(akunpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                hm.paccounts.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                hm.paccounts.setBackground(Color.decode("#333333"));
            }

        };
        hm.paccounts.addMouseListener(ma);
    }

    private void cashpayview() {

        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                CashPaymentView cashpaypane = new CashPaymentView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(cashpaypane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.pcashpay.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.pcashpay.setBackground(Color.decode("#333333"));
            }

        };
        hm.pcashpay.addMouseListener(ma);

    }

    private void cashrecview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                CashReceiptView cashrecpane = new CashReceiptView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(cashrecpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.pcashrec.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.pcashrec.setBackground(Color.decode("#333333"));
            }
        };
        hm.pcashrec.addMouseListener(ma);
    }

    private void bankpayview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                BankPaymentView bankpaypane = new BankPaymentView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(bankpaypane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.pbankpay.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.pbankpay.setBackground(Color.decode("#333333"));
            }
        };
        hm.pbankpay.addMouseListener(ma);
    }

    private void bankrecview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                BankReceiptView bankrecpane = new BankReceiptView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(bankrecpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                hm.pbankrec.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.pbankrec.setBackground(Color.decode("#333333"));
            }
        };
        hm.pbankrec.addMouseListener(ma);
    }

    private void journalsgeneralview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Staticvar.journaltype = 0;
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                JournalView journalpane = new JournalView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(journalpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.pjournalgen.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {
                hm.pjournalgen.setBackground(Color.decode("#333333"));
            }
        };
        hm.pjournalgen.addMouseListener(ma);
    }

    private void journalssaleview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Staticvar.journaltype = 2;
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                JournalView journalpane = new JournalView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(journalpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.pjournalsale.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.pjournalsale.setBackground(Color.decode("#333333"));
            }
        };
        hm.pjournalsale.addMouseListener(ma);
    }

    private void journalspurchaseview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                Staticvar.journaltype = 1;
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                JournalView journalpane = new JournalView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(journalpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.pjournalpurchase.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.pjournalpurchase.setBackground(Color.decode("#333333"));
            }
        };
        hm.pjournalpurchase.addMouseListener(ma);
    }

    private void reportview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                ReportView reportpane = new ReportView();
                hm.container.removeAll();
                hm.container.setLayout(new BorderLayout());
                hm.container.add(reportpane, BorderLayout.CENTER);
                hm.container.revalidate();
                hm.container.repaint();

            }

            @Override
            public void mouseEntered(MouseEvent e) {

                hm.preports.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.preports.setBackground(Color.decode("#333333"));
            }

        };
        hm.preports.addMouseListener(ma);
    }

    private void settingview() {
        MouseAdapter ma = new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
                JDialog jd = new JDialog(new Home());
                jd.setResizable(false);
                jd.setTitle("Setting");
                jd.add(new SettingView());
                jd.pack();
                jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                jd.setLocationRelativeTo(null);
                jd.setVisible(true);
                jd.toFront();

            }

            @Override
            public void mouseEntered(MouseEvent e) {
                hm.psetting.setBackground(Color.decode("#000000"));
            }

            @Override
            public void mouseExited(MouseEvent e) {

                hm.psetting.setBackground(Color.decode("#333333"));
            }

        };
        hm.psetting.addMouseListener(ma);

    }
}
