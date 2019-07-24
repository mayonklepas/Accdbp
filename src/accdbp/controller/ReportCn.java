/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.controller;

import accdbp.helper.Dbconnection;
import accdbp.view.ReportView;
import java.awt.BorderLayout;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
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
    }

    private void printmasteraccounlist() {

        pane.lmasterlist.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                try {
                    String path = "report/accmasterlist.jasper";
                    HashMap hm = new HashMap(0);
                    JasperReport jr = (JasperReport) JRLoader.loadObject(new File(path));
                    JasperPrint jp = JasperFillManager.fillReport(jr, hm, c.cn());
                    pane.preportview.removeAll();
                    pane.preportview.setLayout(new BorderLayout());
                    pane.preportview.add(new JRViewer(jp), BorderLayout.CENTER);
                    pane.preportview.repaint();
                    pane.preportview.revalidate();
                } catch (Exception ex) {
                    Logger.getLogger(ReportCn.class.getName()).log(Level.SEVERE, null, ex);
                } finally {
                    c.dc();
                }

            }
        });
    }

}
