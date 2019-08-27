/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.view;

import accdbp.helper.OneforAllfunc;
import accdbp.helper.Staticvar;
import java.awt.Dialog;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.util.Date;
import javax.swing.JDialog;

/**
 *
 * @author Minami
 */
public class Popreportview extends javax.swing.JPanel {

    /**
     * Creates new form Popreportview
     */
    public Popreportview(int type) {
        initComponents();
        //String dateyearfirstperiode = OneforAllfunc.getyear(new Date()) + "-01" + "-01";
        dtfrom.setDateFormatString("dd/MM/yyyy");
        dtfrom.setDate(new Date());
        dtto.setDateFormatString("dd/MM/yyyy");
        dtto.setDate(new Date());
        if (type == 0) {
            paccountcode.setVisible(true);
            pbookprinttype.setVisible(false);
        } else if (type == 1) {
            edfromaccount.setVisible(true);
            laccountfrom.setVisible(true);
            laccountfrom.setText("Account");
            laccountto.setVisible(false);
            edtoaccount.setVisible(false);
            pbookprinttype.setVisible(false);
        } else if (type == 2) {
            pbookprinttype.setVisible(false);
            paccountcode.setVisible(false);
        } else {
            pbookprinttype.setVisible(true);
            paccountcode.setVisible(false);

        }
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel2 = new javax.swing.JPanel();
        Llabel = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        dtfrom = new com.toedter.calendar.JDateChooser();
        jLabel2 = new javax.swing.JLabel();
        dtto = new com.toedter.calendar.JDateChooser();
        ckperiode = new javax.swing.JCheckBox();
        paccountcode = new javax.swing.JPanel();
        laccountfrom = new javax.swing.JLabel();
        edfromaccount = new javax.swing.JTextField();
        laccountto = new javax.swing.JLabel();
        edtoaccount = new javax.swing.JTextField();
        bprint = new javax.swing.JButton();
        bcancel = new javax.swing.JButton();
        pbookprinttype = new javax.swing.JPanel();
        cmbbookprinttype = new javax.swing.JComboBox<>();

        setBackground(new java.awt.Color(255, 255, 255));

        jPanel2.setBackground(new java.awt.Color(51, 51, 51));

        Llabel.setFont(new java.awt.Font("Century Gothic", 1, 14)); // NOI18N
        Llabel.setForeground(new java.awt.Color(255, 255, 255));
        Llabel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/accdbp/icon/ic_lightbulb_outline_white_24dp.png"))); // NOI18N
        Llabel.setText("Select Parameter");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(Llabel)
                .addContainerGap(120, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(Llabel)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Date Select", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Century Gothic", 0, 11))); // NOI18N

        jLabel1.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        jLabel1.setText("From Date ");

        jLabel2.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        jLabel2.setText("To Date");

        ckperiode.setBackground(new java.awt.Color(255, 255, 255));
        ckperiode.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        ckperiode.setText("Periode");
        ckperiode.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ckperiodeActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(dtto, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(dtfrom, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(ckperiode)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(dtfrom, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ckperiode))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(dtto, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        paccountcode.setBackground(new java.awt.Color(255, 255, 255));
        paccountcode.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Account Select", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Century Gothic", 0, 11))); // NOI18N

        laccountfrom.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        laccountfrom.setText("From Account");

        edfromaccount.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        edfromaccount.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                edfromaccountActionPerformed(evt);
            }
        });
        edfromaccount.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                edfromaccountKeyPressed(evt);
            }
        });

        laccountto.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        laccountto.setText("To Account");

        edtoaccount.setFont(new java.awt.Font("Century Gothic", 0, 11)); // NOI18N
        edtoaccount.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                edtoaccountKeyPressed(evt);
            }
        });

        javax.swing.GroupLayout paccountcodeLayout = new javax.swing.GroupLayout(paccountcode);
        paccountcode.setLayout(paccountcodeLayout);
        paccountcodeLayout.setHorizontalGroup(
            paccountcodeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(paccountcodeLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(paccountcodeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(edfromaccount)
                    .addGroup(paccountcodeLayout.createSequentialGroup()
                        .addGroup(paccountcodeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(laccountfrom)
                            .addComponent(laccountto))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addComponent(edtoaccount))
                .addContainerGap())
        );
        paccountcodeLayout.setVerticalGroup(
            paccountcodeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(paccountcodeLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(laccountfrom)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(edfromaccount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(laccountto)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(edtoaccount, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        bprint.setText("Print");
        bprint.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bprintActionPerformed(evt);
            }
        });

        bcancel.setText("Cancel");
        bcancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bcancelActionPerformed(evt);
            }
        });

        pbookprinttype.setBackground(new java.awt.Color(255, 255, 255));
        pbookprinttype.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Book Print Type", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Century Gothic", 0, 11))); // NOI18N

        cmbbookprinttype.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "CASH", "BANK" }));
        cmbbookprinttype.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cmbbookprinttypeActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pbookprinttypeLayout = new javax.swing.GroupLayout(pbookprinttype);
        pbookprinttype.setLayout(pbookprinttypeLayout);
        pbookprinttypeLayout.setHorizontalGroup(
            pbookprinttypeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pbookprinttypeLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(cmbbookprinttype, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        pbookprinttypeLayout.setVerticalGroup(
            pbookprinttypeLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pbookprinttypeLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(cmbbookprinttype, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(paccountcode, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(pbookprinttype, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(bprint)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(bcancel)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(paccountcode, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(pbookprinttype, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(bcancel)
                    .addComponent(bprint))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void bprintActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bprintActionPerformed
        // TODO add your handling code here:
        Staticvar.isprint = true;
        Staticvar.date_print_from = dtfrom.getDate();
        Staticvar.date_print_to = dtto.getDate();
        Staticvar.code_from = edfromaccount.getText();
        Staticvar.code_to = edtoaccount.getText();
        Staticvar.acc_type = cmbbookprinttype.getSelectedIndex() == 0 ? 0 : 1;
        JDialog jd = (JDialog) this.getRootPane().getParent();
        jd.dispose();

    }//GEN-LAST:event_bprintActionPerformed

    private void bcancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bcancelActionPerformed
        // TODO add your handling code here:
        Staticvar.isprint = false;
        Staticvar.date_print_from = new Date();
        Staticvar.date_print_to = new Date();
        Staticvar.code_from = edfromaccount.getText();
        Staticvar.code_to = edtoaccount.getText();
        JDialog jd = (JDialog) this.getRootPane().getParent();
        jd.dispose();
    }//GEN-LAST:event_bcancelActionPerformed

    private void ckperiodeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ckperiodeActionPerformed
        // TODO add your handling code here:
        if (ckperiode.isSelected()) {
            String dateyearfirstperiode = OneforAllfunc.getyear(new Date()) + "-01" + "-01";
            dtfrom.setDate(OneforAllfunc.datefromdb(dateyearfirstperiode));
            dtfrom.setEnabled(false);
        } else {
            dtfrom.setDate(new Date());
            dtfrom.setEnabled(true);
        }

    }//GEN-LAST:event_ckperiodeActionPerformed

    private void edfromaccountActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_edfromaccountActionPerformed
        // TODO add your handling code here:

    }//GEN-LAST:event_edfromaccountActionPerformed

    private void edfromaccountKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_edfromaccountKeyPressed

        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            String oldaccountval = edfromaccount.getText();
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
                edfromaccount.setText(Staticvar.global_val);
            } else {
                edfromaccount.setText(oldaccountval);
            }
        }

    }//GEN-LAST:event_edfromaccountKeyPressed

    private void edtoaccountKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_edtoaccountKeyPressed
        if (evt.getKeyCode() == KeyEvent.VK_ENTER) {
            String oldaccountval = edtoaccount.getText();
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
                edtoaccount.setText(Staticvar.global_val);
            } else {
                edtoaccount.setText(oldaccountval);
            }
        }
    }//GEN-LAST:event_edtoaccountKeyPressed

    private void cmbbookprinttypeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cmbbookprinttypeActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_cmbbookprinttypeActionPerformed

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JLabel Llabel;
    public javax.swing.JButton bcancel;
    public javax.swing.JButton bprint;
    public javax.swing.JCheckBox ckperiode;
    public javax.swing.JComboBox<String> cmbbookprinttype;
    public com.toedter.calendar.JDateChooser dtfrom;
    public com.toedter.calendar.JDateChooser dtto;
    public javax.swing.JTextField edfromaccount;
    public javax.swing.JTextField edtoaccount;
    public javax.swing.JLabel jLabel1;
    public javax.swing.JLabel jLabel2;
    public javax.swing.JPanel jPanel1;
    public javax.swing.JPanel jPanel2;
    public javax.swing.JLabel laccountfrom;
    public javax.swing.JLabel laccountto;
    public javax.swing.JPanel paccountcode;
    public javax.swing.JPanel pbookprinttype;
    // End of variables declaration//GEN-END:variables
}
