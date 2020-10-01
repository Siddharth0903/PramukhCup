<%-- 
    Document   : PCSearch
    Created on : Mar 3, 2020, 7:58:53 PM
    Author     : Siddharth
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@page import="DataAccessObject.DBConnection"%>
<%@page import="DataAccessObject.DBMethods"%>
<%@page import="Model.PCModel"%>
<%@page import="Controler.PCInfoController"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
              <style>
  table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 40%;
}

td, th {
  border: 1px solid white;
  text-align: left;
  padding: 8px;
}</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:powderblue;">
    <center>
        <%  String pemail = (String)request.getAttribute("pemail"); %>
         <%  ArrayList<PCModel> list = (ArrayList<PCModel>)request.getAttribute("list"); %>
            
     <% 
        
        try{
     %>    
     <h1> Registration Details </h1>
     <p> Details for <%= pemail %>  </p>
     <table><center>
     
        <tr>
         
        <th>First Name  </th>
        <th>Last Name  </th>
        <th>Player's Email  </th>
        <th>Player's Phone  </th>        
        <th> Team Name </th>
        <th>Manager's Email </th>
        <th> Entry Fee  </th>        
        </tr>
 
         
           
            <%  
           Connection connection = DBConnection.createConnection();
           final String SQL_SELECT = "SELECT * FROM PramukhCup WHERE pemail= ? ";    
           
           PreparedStatement ps = null;
          ps = connection.prepareStatement(SQL_SELECT);
          ps.setString(1,pemail );
          PCModel user = null;
       
        ResultSet queryResult =  ps.executeQuery(); %>
         <%
//     
//   for(PCModel category : list) {%>

       
           
           
       <%  if(queryResult.next()){
                user = new PCModel();
                user.setFirstName(queryResult.getString("fname")); 
                user.setLastName(queryResult.getString("lname"));
                user.setpEmail(queryResult.getString("pemail"));
                user.setpPhone(queryResult.getLong("pphone"));
                user.setTeamName(queryResult.getString("teamname"));
                user.setmEmail(queryResult.getString("memail"));
                user.setEntryFee(queryResult.getString("entryfee"));
                
                %>
        <tr>     
            <td>  <%= user.getFirstName() %>        </td>           
            <td>   <%= user.getLastName() %>       </td>
            <td>      <%= user.getpEmail() %>   </td>
            <td>     <%= user.getpPhone() %>  </td>
            <td>     <%= user.getTeamName() %>   </td>
            <td>     <%= user.getmEmail() %>  </td>
            <td>     <%= user.getEntryFee() %>  </td>
        </tr>       
            <%     
                } 
            
               %>
                 </table>
                <% 
               
               
            catch(SQLException e) 
                {
                       e.printStackTrace();
                }
            %>
            <br> <br> <p> To return first page, <a href="PCIndex.jsp"> Click Here </a> <br> <br>
                To return previous page, <a href="PCForm.jsp"> <input type="button" value=" Register Again"> <br><br> </a> 
                <a href="PCDatabaseDetail.jsp">
                 <input type="button" name = "database" value= "See Databse" ></a> 
       
            </center>
     </body>
</html>
