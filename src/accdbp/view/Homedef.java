/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.view;

import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Image;
import java.io.File;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

/**
 *
 * @author Minami
 */
public class Homedef extends javax.swing.JPanel {

    /**
     * Creates new form Homedef
     */
    public Homedef() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    @Override
    protected void paintComponent(Graphics g) {
        Image img = new ImageIcon("bg.jpg").getImage();
        Dimension size = new Dimension(this.getRootPane().getParent().getWidth() - 28, this.getRootPane().getParent().getHeight() - 115);
        setPreferredSize(size);
        setMinimumSize(size);
        setMaximumSize(size);
        setSize(size);
        g.drawImage(img, 0, 0, null);
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}