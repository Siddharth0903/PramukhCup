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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Siddharth Patel
 */
public class PCUpdateCon extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        //  Storing the value of searchtext from  PCSearch.jsp and PCDatabaseDetail.jsp into variabe pemail
        String priKey = request.getParameter("priKey");
       
        

        
        
        PCModel user1 = new PCModel();
        user1.setpEmail(priKey);
        
        
        DBMethods user2 = new DBMethods();
        user2.update(user1);
         // In the request object key value pair is stored with pemail as key and value
         request.setAttribute("priKey", priKey);
         
     
        
        RequestDispatcher view = request.getRequestDispatcher("PCModify.jsp");
        view.forward(request, response);
    }
}
