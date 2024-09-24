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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Minami
 */
public class Dbconnection {

    String host = "jdbc:derby:accappdb;create=true;user=SYSDBA;password=masterkey";
    Connection conn;

    public Connection cn() {
        try {
            conn = DriverManager.getConnection(host);
            Statement s = conn.createStatement();
            conn.setSchema("APP");
            /*s.executeUpdate("CALL SYSCS_UTIL.SYSCS_SET_DATABASE_PROPERTY('derby.connection.requireAuthentication', 'true')");
            s.executeUpdate("CALL SYSCS_UTIL.SYSCS_SET_DATABASE_PROPERTY('derby.authentication.provider', 'BUILTIN')");
            s.executeUpdate("CALL SYSCS_UTIL.SYSCS_SET_DATABASE_PROPERTY('derby.user.SYSDBA', 'masterkey')");
            s.executeUpdate("CALL SYSCS_UTIL.SYSCS_SET_DATABASE_PROPERTY('derby.database.propertiesOnly', 'true')");*/
        } catch (SQLException ex) {
            Logger.getLogger(Dbconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }

    public void dc() {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dbconnection.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
