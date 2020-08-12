/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Le Minh Duc
 */
public class ConnectionDB {
    private static final String DRIVER ="com.microsoft.sqlserver.jdbc.SQLServerDriver";  
    private static final String URL ="jdbc:sqlserver://localhost:1433;databaseName=VEGEFOODS";  
    private static final String USER ="sa";  
    private static final String PASS ="123";
    public static Connection openConnection(){
        Connection con = null;
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL,USER,PASS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
     public static void closeConnection(Connection con){
        if(con!=null)
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConnectionDB.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
       
    }
//    public static void main(String[] args) {
//        boolean check;
//         Connection con = ConnectionDB.openConnection();
//         if()
//    }
}
