<%-- 
    Document   : PCModify
    Created on : Mar 22, 2020, 11:24:23 AM
    Author     : Siddharth Patel
--%>

<%@page import="DataAccessObject.DBConnection"%>
<%@page import="DataAccessObject.DBMethods"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.PCModel"%>
<%@page import="Controler.PCInfoController"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%  String priKey = (String) request.getAttribute("priKey");  %>
         <%  
                Connection connection = DBConnection.createConnection();
     final String SQL_SELECT = "UPDATE PramukhCup SET fname = ?, lname = ?, pphone = ?,"
          + " teamname = ?, managername = ?,entryfee = ?   WHERE pemail = priKey ";    
         
        Statement stmt2 = null;
        stmt2 = connection.createStatement();
        ResultSet queryResult = stmt2.executeQuery(SQL_SELECT);
        ResultSetMetaData metaData = queryResult.getMetaData(); 
                
       
               
              %>
    </head>
    <body>
         <center>   <h1>Welcome to Pramukh Cup Registration</h1> </center> 
        <form method="Post" action="PCInfoController" >    <center>
              <!-- Getting the input value from the user -->
            <p> Please enter the following details : <br><br>
                First Name :
                <input type= "text" name="fname" value ="<% out.print(queryResult.getString("fname")); %>"required > <br> <br>
                Last  Name : 
                <input type= "text" name="lname" value="<% out.print(queryResult.getString("lname")); %> " required > <br> <br>
                Players's Email : 
                <input type= "text" name="pemail" value="<% out.print(queryResult.getString("pemail")); %> "required/> <br> <br>
                Player's Phone : 
                <input type= "text" name="pphone" value="<% out.print(queryResult.getString("pphone")); %> " required/> <br> <br>
                Team Name :
                <input type= "text" name="tname" value="<% out.print(queryResult.getString("tname")); %> " /><br> <br>
                Manager's Email Address : 
                <input type= "text" name="memail" value="<% out.print(queryResult.getString("memail")); %> " /><br> <br>
                Entry Fee : 
                <input type="radio" name="entryfee" value="Yes">Yes
                <input type="radio" name="entryfee" value="No"> No <br> <br>
                
                <!-- Submit, Reset and Link to go other page -->
                <input type="submit" value="Submit">
                <input type="reset" value="Cancel"> <br> <br> <br>
                To return previous page, <a href="PCModifyList.jsp"> Click Here </a>
                
                
                
           
            </p>    </center>
    </body>
</html>
