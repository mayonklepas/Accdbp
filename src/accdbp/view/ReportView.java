/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.view;

import accdbp.controller.ReportCn;

/**
 *
 * @author Minami
 */
public class ReportView extends javax.swing.JPanel {

    /**
     * Creates new form ReportView
     */
    public ReportView() {
        initComponents();
        new ReportCn(this);
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
        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        lmasterlist = new javax.swing.JLabel();
        lledger = new javax.swing.JLabel();
        ljournal = new javax.swing.JLabel();
        lonaccountbalance = new javax.swing.JLabel();
        lontrialbalance = new javax.swing.JLabel();
        lbalancesheet = new javax.swing.JLabel();
        lcashbookprint = new javax.swing.JLabel();
        preportview = new javax.swing.JPanel();

        setBackground(new java.awt.Color(255, 255, 255));
        setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(204, 204, 204)));

        jPanel2.setBackground(new java.awt.Color(51, 51, 51));

        jLabel1.setFont(new java.awt.Font("Century Gothic", 1, 15)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 255, 255));
        jLabel1.setIcon(new javax.swing.ImageIcon(getClass().getResource("/accdbp/icon/ic_print_white_24dp.png"))); // NOI18N
        jLabel1.setText("Report");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Report Category", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Century Gothic", 0, 13))); // NOI18N

        lmasterlist.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        lmasterlist.setText("Account Master Listing");
        lmasterlist.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        lledger.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        lledger.setText("Ledger");
        lledger.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        ljournal.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        ljournal.setText("Journal Register");
        ljournal.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        lonaccountbalance.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        lonaccountbalance.setText("On-Line Account Balance");
        lonaccountbalance.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        lontrialbalance.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        lontrialbalance.setText("On-Line Trial Balance");
        lontrialbalance.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        lbalancesheet.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        lbalancesheet.setText("P&L, Balance Sheet");
        lbalancesheet.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        lcashbookprint.setFont(new java.awt.Font("Century Gothic", 0, 13)); // NOI18N
        lcashbookprint.setText("Cash Book Print");
        lcashbookprint.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lmasterlist)
                    .addComponent(lledger)
                    .addComponent(ljournal)
                    .addComponent(lontrialbalance)
                    .addComponent(lonaccountbalance)
                    .addComponent(lbalancesheet)
                    .addComponent(lcashbookprint))
                .addContainerGap(36, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lmasterlist)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lledger)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(ljournal)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lontrialbalance)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lonaccountbalance)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lbalancesheet)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lcashbookprint)
                .addContainerGap(185, Short.MAX_VALUE))
        );

        preportview.setBackground(new java.awt.Color(255, 255, 255));
        preportview.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Report View", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Century Gothic", 0, 13))); // NOI18N

        javax.swing.GroupLayout preportviewLayout = new javax.swing.GroupLayout(preportview);
        preportview.setLayout(preportviewLayout);
        preportviewLayout.setHorizontalGroup(
            preportviewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 477, Short.MAX_VALUE)
        );
        preportviewLayout.setVerticalGroup(
            preportviewLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(preportview, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(preportview, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JLabel jLabel1;
    public javax.swing.JPanel jPanel1;
    public javax.swing.JPanel jPanel2;
    public javax.swing.JLabel lbalancesheet;
    public javax.swing.JLabel lcashbookprint;
    public javax.swing.JLabel ljournal;
    public javax.swing.JLabel lledger;
    public javax.swing.JLabel lmasterlist;
    public javax.swing.JLabel lonaccountbalance;
    public javax.swing.JLabel lontrialbalance;
    public javax.swing.JPanel preportview;
    // End of variables declaration//GEN-END:variables
}
