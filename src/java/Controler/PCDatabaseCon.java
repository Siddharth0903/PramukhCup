/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controler;

import DataAccessObject.DBConnection;
import DataAccessObject.DBMethods;
import Model.PCModel;
import java.io.IOException;
import java.sql.*;
import java.io.PrintWriter;
import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.HttpJspPage;
import org.apache.jasper.JasperException;
import Controler.PCInfoController;

/**
 *
 * @author Siddharth 
 */
public class PCDatabaseCon extends HttpServlet {

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
            throws ServletException, IOException{
        
        //  Storing the value of searchtext from  PCSearch.jsp and PCDatabaseDetail.jsp into variabe pemail
        String pemail = request.getParameter("searchtext");
        

        
        
     
         // In the request object key value pair is stored with pemail as key and value
         request.setAttribute("pemail", pemail);
         
        
        
        RequestDispatcher view = request.getRequestDispatcher("PCSearch.jsp");
        view.forward(request, response);
    }
}


    
  
    

