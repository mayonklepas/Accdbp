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
import accdbp.view.BankPaymentView;
import accdbp.view.BankReceiptView;
import accdbp.view.CConfirmDialog;
import accdbp.view.CashPaymentView;
import accdbp.view.CashReceiptView;
import accdbp.view.Home;
import accdbp.view.Homedef;
import accdbp.view.JournalOpView;
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
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.BorderFactory;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.WindowConstants;

/**
 *
 * @author Minami
 */
public class HomeCn {

    Home hm = new Home();
    JDialog jdmenupay = new JDialog(new Home());

    public HomeCn() {
        hm.setTitle("Accounting Softwares");
        hm.setExtendedState(Frame.MAXIMIZED_BOTH);
        hm.setVisible(true);
        String companyName = "";
        String sql = "SELECT * FROM TB_INFO FETCH FIRST 1 ROWS ONLY";
        try ( Connection c = new Dbconnection().cn();  PreparedStatement ps = c.prepareStatement(sql)) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                companyName = rs.getString("COMPANY_NAME").trim();
            }
        } catch (Exception e) {

        }
        hm.lCompanyLabel.setText(companyName);
        menuActionButton();
        defview();
        hm.progressMain.setIndeterminate(true);
        hm.progressMain.setVisible(false);
        hm.progressMain.setEnabled(false);
        hm.lProgress.setVisible(false);
        jdmenupay.setResizable(false);
        jdmenupay.setUndecorated(true);
        jdmenupay.add(new PaymentpaneView());
        jdmenupay.pack();
        jdmenupay.setModalityType(Dialog.ModalityType.MODELESS);
        viewlogin();

    }

    private void menuActionButton() {
        hm.bHome.addActionListener(a -> setterForm(new Homedef()));
        hm.bAccount.addActionListener(a -> setterForm(new AccountsView()));
        hm.bCashPayment.addActionListener(a -> setterForm(new CashPaymentView()));
        hm.bBankPayments.addActionListener(a -> setterForm(new BankPaymentView()));
        hm.bCashReceipts.addActionListener(a -> setterForm(new CashReceiptView()));
        hm.bBankReceipts.addActionListener(a -> setterForm(new BankReceiptView()));
        hm.bJournalSale.addActionListener(a -> {
            Staticvar.journaltype = 2;
            setterForm(new JournalView());
        });
        hm.bJournalPurchase.addActionListener(a -> {
            Staticvar.journaltype = 1;
            setterForm(new JournalView());
        });
        hm.bJournalGeneral.addActionListener(a -> {
            Staticvar.journaltype = 0;
            setterForm(new JournalView());
        });
        hm.bReport.addActionListener(a -> setterForm(new ReportView()));
        hm.psetting.addMouseListener(new MouseAdapter() {
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

        });
        hm.bReindex.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent a) {
                JDialog jd = new JDialog(new Home());
                jd.setResizable(false);
                jd.setTitle("Login");
                jd.add(new CConfirmDialog("Konfirmasi Reindex Data", "Proses ini membutuhkan waktu karena akan menghitung ulang data dari awal tahun hingga saat ini"));
                jd.pack();
                jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                jd.setLocationRelativeTo(null);
                jd.setDefaultCloseOperation(WindowConstants.DO_NOTHING_ON_CLOSE);
                jd.setVisible(true);
                jd.toFront();
                if (Staticvar.isyes) {
                    Executors.newSingleThreadExecutor().execute(() -> {
                        hm.progressMain.setEnabled(true);
                        hm.lProgress.setVisible(true);
                        hm.progressMain.setVisible(true);
                        OneforAllfunc.generatesaldo(Integer.parseInt(Staticvar.year_periode));
                        try {
                            Thread.sleep(2000);
                        } catch (InterruptedException ex) {
                            Logger.getLogger(HomeCn.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        hm.lProgress.setVisible(false);
                        hm.progressMain.setVisible(false);
                        hm.progressMain.setEnabled(false);
                    });

                }
            }
        });

    }

    private void setterForm(JPanel panel) {
        KeyboardFocusManager.getCurrentKeyboardFocusManager().removeKeyEventDispatcher(Staticvar.keydis);
        hm.container.removeAll();
        hm.container.setLayout(new BorderLayout());
        hm.container.add(panel, BorderLayout.CENTER);
        hm.container.revalidate();
        hm.container.repaint();
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
        hm.lacc_periode.setText("Periode : " + Staticvar.month_periode + "/" + Staticvar.year_periode);
    }

}
