/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import accdbp.helper.Dbconnection;
import accdbp.helper.OneforAllfunc;
import accdbp.helper.Staticvar;
import accdbp.view.Home;
import accdbp.view.Popreportview;
import accdbp.view.ReportView;
import java.awt.BorderLayout;
import java.awt.Dialog;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JDialog;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.swing.JRViewer;

/**
 *
 * @author Minami
 */
public class ReportCn {

    Dbconnection c = new Dbconnection();
    ReportView pane;

    public ReportCn(ReportView pane) {
        this.pane = pane;
        printmasteraccounlist();
        printledger();
        printonlinetrialbalance();
        printonlineaccountbalance();
        printprofitloss();
        printbalancesheet();
        printcasbookprint();
    }

    private void printmasteraccounlist() {

        pane.lmasterlist.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    String path = "report/MasterAccountlist.jrxml";
                    HashMap hm = new HashMap(3);
                    hm.put("COMPANY_NAME", Staticvar.company_name);
                    hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                    hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                    JasperReport jr = JasperCompileManager.compileReport(path);
                    JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                    pane.preportview.removeAll();
                    pane.preportview.setLayout(new BorderLayout());
                    pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                    pane.preportview.repaint();
                    pane.preportview.revalidate();
                } catch (Exception ex) {
                    OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

    private void printledger() {
        pane.lledger.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Report Parameter");
                    jd.add(new Popreportview(1));
                    jd.pack();
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isprint == true) {
                        Staticvar.isprint = false;
                        String path = "report/Ledger.jrxml";
                        HashMap hm = new HashMap(5);
                        hm.put("DT_FROM", Staticvar.date_print_from);
                        hm.put("DT_TO", Staticvar.date_print_to);
                        hm.put("PACC_CODE", Staticvar.code_from);
                        hm.put("COMPANY_NAME", Staticvar.company_name);
                        hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                        hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                        JasperReport jr = JasperCompileManager.compileReport(path);
                        JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                        pane.preportview.removeAll();
                        pane.preportview.setLayout(new BorderLayout());
                        pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                        pane.preportview.repaint();
                        pane.preportview.revalidate();
                    }

                } catch (Exception ex) {
                    OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

    private void printcasbookprint() {
        pane.lcashbookprint.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Report Parameter");
                    jd.add(new Popreportview(3));
                    jd.pack();
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isprint == true) {
                        Staticvar.isprint = false;
                        /*List<BookPrint> data = new ReportQuery().getBookPrint(
                                 Staticvar.date_print_from,
                                Staticvar.date_print_to,
                                Staticvar.acc_type,
                                Staticvar.code_from);*/
                        String path = "report/Bookprint.jrxml";
                        HashMap hm = new HashMap(5);
                        hm.put("DT_FROM", Staticvar.date_print_from);
                        hm.put("DT_TO", Staticvar.date_print_to);
                        hm.put("COMPANY_NAME", Staticvar.company_name);
                        hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                        hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                        hm.put("ACC_TYPE", Staticvar.acc_type);
                        hm.put("ACC_CODE", Staticvar.code_from);
                        JasperReport jr = (JasperReport) JRLoader.loadObject(new File(path));
                        JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                        pane.preportview.removeAll();
                        pane.preportview.setLayout(new BorderLayout());
                        pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                        pane.preportview.repaint();
                        pane.preportview.revalidate();
                    }
                } catch (Exception ex) {
                    OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

    private void printonlinetrialbalance() {
        pane.lontrialbalance.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Report Parameter");
                    jd.add(new Popreportview(2));
                    jd.pack();
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isprint == true) {
                        Staticvar.isprint = false;
                        /*List<CodeNameAmount> data = new ReportQuery().getBalanceSheet(Staticvar.date_print_from,
                                Staticvar.date_print_to);
                        JRBeanCollectionDataSource ds = new JRBeanCollectionDataSource(data);*/
                        String path = "report/Onlinertrialbalance.jrxml";
                        HashMap hm = new HashMap(5);
                        hm.put("DT_FROM", Staticvar.date_print_from);
                        hm.put("DT_TO", Staticvar.date_print_to);
                        hm.put("COMPANY_NAME", Staticvar.company_name);
                        hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                        hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                        JasperReport jr = JasperCompileManager.compileReport(path);
                        JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                        pane.preportview.removeAll();
                        pane.preportview.setLayout(new BorderLayout());
                        pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                        pane.preportview.repaint();
                        pane.preportview.revalidate();
                    }
                } catch (Exception ex) {
                    OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

    private void printonlineaccountbalance() {
        pane.lonaccountbalance.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Report Parameter");
                    jd.add(new Popreportview(0));
                    jd.pack();
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isprint == true) {
                        Staticvar.isprint = false;
                        //OneforAllfunc.generatereport(Staticvar.date_print_from, Staticvar.date_print_to);
                        String path = "report/Onlineraccbalance.jrxml";
                        HashMap hm = new HashMap(7);
                        hm.put("DT_FROM", Staticvar.date_print_from);
                        hm.put("DT_TO", Staticvar.date_print_to);
                        hm.put("ACC_FROM", Staticvar.code_from);
                        hm.put("ACC_TO", Staticvar.code_to);
                        hm.put("COMPANY_NAME", Staticvar.company_name);
                        hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                        hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                        JasperReport jr = (JasperReport) JRLoader.loadObject(new File(path));
                        JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                        pane.preportview.removeAll();
                        pane.preportview.setLayout(new BorderLayout());
                        pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                        pane.preportview.repaint();
                        pane.preportview.revalidate();
                    }
                } catch (Exception ex) {
                    //OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

    private void printprofitloss() {
        pane.lprofitloss.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Report Parameter");
                    jd.add(new Popreportview(2));
                    jd.pack();
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isprint == true) {
                        Staticvar.isprint = false;
                        /*List<CodeNameAmount> data = new ReportQuery().getProfitLoss(Staticvar.date_print_from,
                                Staticvar.date_print_to);
                        JRBeanCollectionDataSource ds = new JRBeanCollectionDataSource(data);*/
                        String path = "report/Profitloss.jrxml";
                        HashMap hm = new HashMap(5);
                        hm.put("DT_FROM", Staticvar.date_print_from);
                        hm.put("DT_TO", Staticvar.date_print_to);
                        hm.put("COMPANY_NAME", Staticvar.company_name);
                        hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                        hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                        JasperReport jr = JasperCompileManager.compileReport(path);
                        JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                        pane.preportview.removeAll();
                        pane.preportview.setLayout(new BorderLayout());
                        pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                        pane.preportview.repaint();
                        pane.preportview.revalidate();
                    }
                } catch (Exception ex) {
                    OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

    private void printbalancesheet() {
        pane.lbalancesheet.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    JDialog jd = new JDialog(new Home());
                    jd.setResizable(false);
                    jd.setTitle("Report Parameter");
                    jd.add(new Popreportview(2));
                    jd.pack();
                    jd.setModalityType(Dialog.ModalityType.APPLICATION_MODAL);
                    jd.setLocationRelativeTo(null);
                    jd.setVisible(true);
                    jd.toFront();
                    if (Staticvar.isprint == true) {
                        Staticvar.isprint = false;
                        /*List<CodeNameAmount> data = new ReportQuery().getBalanceSheet(Staticvar.date_print_from,
                                Staticvar.date_print_to);
                        JRBeanCollectionDataSource ds = new JRBeanCollectionDataSource(data);*/
                        String path = "report/Balancesheet.jrxml";
                        HashMap hm = new HashMap(5);
                        hm.put("DT_FROM", Staticvar.date_print_from);
                        hm.put("DT_TO", Staticvar.date_print_to);
                        hm.put("COMPANY_NAME", Staticvar.company_name);
                        hm.put("COMPANY_ADDRESS", Staticvar.company_address);
                        hm.put("COMPANY_TELEPHONE", Staticvar.company_telp);
                        JasperReport jr = JasperCompileManager.compileReport(path);
                        JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                        pane.preportview.removeAll();
                        pane.preportview.setLayout(new BorderLayout());
                        pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                        pane.preportview.repaint();
                        pane.preportview.revalidate();
                    }
                } catch (Exception ex) {
                    OneforAllfunc.info("System Error", "Details : " + ex.getMessage());
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

}
