<%-- 
    Document   : PCDatabaseDetail
    Created on : Mar 3, 2020, 9:37:22 AM
    Author     : Siddharth Patel
--%>



<%@page import="DataAccessObject.DBConnection"%>
<%@page import="DataAccessObject.DBMethods"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.PCModel"%>
<%@page import="Controler.PCInfoController"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>table {
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
    <center>    <h1>Registration Details</h1>
        
      
     <form method="Post" action="PCUpdateCon" >   
     <table>
     
        <tr>
         
        <th>First Name  </th>
        <th>Last Name  </th>
        <th>Player's Email  </th>
        <th>Player's Phone  </th>        
        <th> Team Name </th>
        <th>Manager's Email Name </th>
        <th> Entry Fee  </th>        
        </tr>
 
         
           
            <%  
              
                Connection connection = DBConnection.createConnection();
                final String SQL_SELECT = "SELECT fname, lname, pemail, pphone, teamname "
                + ", memail,entryfee FROM PramukhCup";    
        try { 
        Statement stmt2 = connection.createStatement(); 
         ResultSet queryResult = stmt2.executeQuery(SQL_SELECT);
                while (queryResult.next()){  
        
       
               
              %>
        <tr>
            
            <td>      <% out.print(queryResult.getString("fname")); %>    </td>
            <td>      <% out.print(queryResult.getString("lname")); %>    </td>
            <td>     <% out.print(queryResult.getString("pemail")); %>    </td>
            <td>      <% out.print(queryResult.getString("pphone")); %>   </td>
            <td>     <% out.print(queryResult.getString("teamname")); %>  </td>
            <td>      <% out.print(queryResult.getString("memail")); %>   </td>
            <td>     <% out.print(queryResult.getString("entryfee")); %>  </td>
            <td>    <a href="PCModify"><button name="priKey" value="<% queryResult.getString("pemail");%>"> Modify </button> </a>
        </tr>       
            <%     
              }
%> 
                 </table>
                <% connection.close();
               }
               
            catch (SQLException sqlException) 
                {
                       sqlException.printStackTrace();
                }

            %>
       

            <br> <br> <p> To return first page, <a href="PCIndex.jsp"> Click Here </a> <br> <br>
                To return previous page, 
                <a href="PCForm.jsp"> <input type="button" value=" Register Again"> <br><br> </a> 
                <input type= "text" name="searchtext" ><a href="PCSearch.jsp">
                    <input type="submit" name = "database" value= " Search "></a> </p>
            
    </body>
</html>
