/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp;

import accdbp.controller.HomeCn;
import com.formdev.flatlaf.FlatIntelliJLaf;
import com.formdev.flatlaf.FlatLightLaf;
import com.formdev.flatlaf.themes.FlatMacLightLaf;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.LookAndFeel;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
import javax.swing.plaf.basic.BasicLookAndFeel;
import org.apache.log4j.BasicConfigurator;

/**
 *
 * @author Minami
 */
public class Accdbp {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            //BasicConfigurator.configure();
            UIManager.setLookAndFeel(new FlatIntelliJLaf());
        } catch (UnsupportedLookAndFeelException ex) {
            Logger.getLogger(Accdbp.class.getName()).log(Level.SEVERE, null, ex);
        }
        new HomeCn();
    }

}
