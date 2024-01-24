/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.helper;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Minami
 */
public class Dbconnection {

    //String filecon = new File("ACCDB.FDB").getAbsolutePath();
    //String host = "jdbc:firebirdsql://localhost:3050/" + filecon + "?defaultResultSetHoldable=True";
    //String host = "";
    String host = "jdbc:h2:./accdb";
    //String host = "jdbc:h2:tcp://localhost:9092/./accdb";
    String username = "SYSDBA";
    String passsword = "masterkey";
    Connection con;

    public Connection cn() {
        try {
            con = DriverManager.getConnection(host, username, passsword);
        } catch (SQLException ex) {
            Logger.getLogger(Dbconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }

    public void dc() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dbconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
