/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataAccessObject;

import Model.PCModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;

/**
 *
 * @author Siddharth Patel
 */
public class DBMethods {
     public void insert(PCModel user) {
        // Get connection to the database
        Connection connection = DBConnection.createConnection();
        PreparedStatement ps = null;

        // SQL Statement 
        String query
                = "INSERT into PramukhCup (fname, lname, pemail, pphone, teamname, "
            + "memail,entryfee ) VALUES (?, ?, ?, ?, ?, ?, ?);";
        
        try {
            // Allocating the value 
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getpEmail());
            ps.setLong(4, user.getpPhone());
            ps.setString(5, user.getTeamName());
            ps.setString(6, user.getmEmail());
            ps.setString(7, user.getEntryFee());
            ps.executeUpdate();
           
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            DBConnection.closeConnection(connection);
            DBConnection.closePreparedStatement(ps);
          }
    }

    public static int update(PCModel user) {
        Connection connection = DBConnection.createConnection();;
        PreparedStatement ps = null;

        String query = "UPDATE PramukhCup SET fname = ?, lname = ?, pphone = ?,"
          + " teamname = ?, managername = ?,entryfee = ?   WHERE pemail = ?";
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getpEmail());
            ps.setLong(4, user.getpPhone());
            ps.setString(4, user.getTeamName());
            ps.setString(5, user.getmEmail());
            ps.setString(7, user.getEntryFee());
            return ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
            return 0;
        } finally {
            DBConnection.closeConnection(connection);
            DBConnection.closePreparedStatement(ps);
          }
    }
    
 /*   String query = "UPDATE user SET firstName = ?, lastName = ? WHERE email = ?";

try {

ps = connection.prepareStatement(query);

ps.setString(1, user.getFirstName());

ps.setString(2, user.getLastName());

ps.setString(3, user.getEmail());


return ps.executeUpdate();

} catch (SQLException e) {

System.out.println(e);

return 0;

} finally {

DBUtility.closeConnection(connection);

DBUtility.closePreparedStatement(ps);

}

}
*/
//    public static int delete(PCModel user) {
//        Connection connection = DBConnection.createConnection();;
//        PreparedStatement ps = null;
//        String query = "DELETE FROM PramukhCup WHERE lname = Patel";
//        try {
//            ps = connection.prepareStatement(query);
//         
//
//            return ps.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//            return 0;
//        } finally {
//            DBConnection.closeConnection(connection);
//            DBConnection.closePreparedStatement(ps);
//        }
//    }
    
    
    
    public  String selectUser(String u1) {
        Connection connection =  DBConnection.createConnection();
        PreparedStatement ps = null;
        ResultSet rs = null;
 
         String query = "SELECT * FROM user WHERE pemail = ?";
               
        try {
            ps = connection.prepareStatement(query);
            ps.setString(1, u1);
            rs = ps.executeQuery();
           String returnemail = null; 
            if (rs.next()) {
               returnemail = u1;    
            }
            return returnemail;
        } catch (SQLException e) {
            System.out.println(e);
           return null;
        } finally {
            DBConnection.closeConnection(connection);
            DBConnection.closeResultSet(rs);
            DBConnection.closePreparedStatement(ps);
        }
    }

    
}
