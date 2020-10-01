/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import DataAccessObject.DBMethods;
import Model.PCModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Siddharth Patel
 */
public class PCInfoController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    

        //get input data from the request object
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String pEmail = request.getParameter("pemail");
        String phoneNumber = request.getParameter("pphone");
        String teamName = request.getParameter("tname");
        String mEmail = request.getParameter("memail");
        String entryFee = request.getParameter("entryfee");
        
        // Converting from string to long
        long pPhone = Long.parseLong(phoneNumber);
        
         
         // set the value in object user1
        PCModel user1 = new PCModel(firstName,lastName, pEmail, pPhone, teamName,  mEmail, entryFee);
        user1.setFirstName(firstName);
        user1.setLastName(lastName);
        user1.setpEmail(pEmail);
        user1.setpPhone(pPhone);
        user1.setTeamName(teamName);
        user1.setmEmail(mEmail);
        user1.setEntryFee(entryFee);
        
        String match;
        
        // a new user is created in DBMethod Class
        DBMethods user = new DBMethods();
      
        
        
        
        
        // 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            // Values of user1 is passed to user object 
            user.insert(user1);
            // In the request object key value pair is stored with and list as key and value
    
            request.setAttribute("user", user);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(PCInfoController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
       
            
             
        request.setAttribute("user1",user1);
       
        
         RequestDispatcher view = request.getRequestDispatcher("PCFormDetail.jsp");
       view.forward(request, response);
        
    
    
    }
}

