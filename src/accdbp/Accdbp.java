/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp;

import accdbp.controller.HomeCn;
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
        BasicConfigurator.configure();
        new HomeCn();
    }

}
