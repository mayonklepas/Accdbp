/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accdbp.helper;

import java.awt.KeyEventDispatcher;
import java.io.File;
import java.util.Date;

/**
 *
 * @author Minami
 */
public class Staticvar {

    public static boolean isyes = true;
    public static boolean isupdate = true;
    public static boolean isProcess = false;
    public static String global_val = "";
    public static String global_name = "";
    public static KeyEventDispatcher keydis = null;
    public static String company_name = "";
    public static String company_address = "";
    public static String company_telp = "";
    public static String username = "";
    public static String password = "";
    public static int type = 0;
    public static boolean isclose = false;
    public static boolean isfirst = false;
    public static String month_periode = "";
    public static String year_periode = "";
    public static Date date_print_from = OneforAllfunc.datefromdb("2019-01-01");
    public static Date date_print_to = OneforAllfunc.datefromdb("2019-07-30");
    public static String code_from = "1";
    public static String code_to = "2001";
    public static boolean isprint = false;
    public static int journaltype = 0;
    public static int acc_type = 0;
    public static String filecon = new File("ACCDB.FDB").getAbsolutePath();
    public static String dbfilecon = new File("ACCDB.FDB").getAbsolutePath();
    public static String dbhost = "jdbc:firebirdsql://localhost:3050/" + filecon + "?defaultResultSetHoldable=True";
    public static String dbuser = "SYSDBA";
    public static String dbpass = "masterkey";
    /*public static String keyholdnumeric[] = {"1", "2", "3", "4", "5", "6", "7", "8", "9",
        "0", "NUMPAD1", "NUMPAD2", "NUMPAD3", "NUMPAD4", "NUMPAD5", "NUMPAD6", "NUMPAD7", "NUMPAD8", "NUMPAD9",
        "NUMPAD0", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p",
        "q", "r", "s", "t", "u", "p", "w", "x", "y", "z", "A", "B", "C", "D",
        "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R",
        "S", "T", "U", "P", "W", "X", "Y", "Z", "BACK_SPACE", "SLASH", "BACK_SLASH", "ADD", "MULTIPLY", "EQUALS",
        "COMMA", "ASTERISK", "SUBTRACT", "UNDERSCORE", "SEPARATOR", "SEMICOLON", "COLON", "RIGHT_PARENTHESIS",
        "LEFT_PARENTHESIS", "QUOTEDBL", "QUOTE", "BACK_QUOTE", "OPEN_BRACKET", "CLOSE_BRACKET", "PLUS", "MINUS",
        "PERIOD", "NUMBER_SIGN", "GREATER", "BRACELEFT", "BRACERIGHT"};*/
    public static String keyholdnumeric[] = {"ENTER"};

}
