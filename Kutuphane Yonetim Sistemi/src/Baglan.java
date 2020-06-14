/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author xsamu
 */
import java.sql.*;
import javax.swing.JOptionPane;

public class Baglan {

    Connection conn;
    ResultSet rs;
    PreparedStatement pst;

    public static Baglan ConnecrDb() {

       
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/ogrenci","root","9c0a11aa");
            return (Baglan) conn;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
}
