<%-- 
    Document   : PCRegistration
    Created on : Mar 3, 2020, 9:36:24 AM
    Author     : Siddharth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin  Page</title>
    </head>
    <body>
         <center>   <h1>Welcome to SSU Election </h1> </center>
         
        <form method="Get" action="AdminCon" >    <center>
              <!-- Getting the input value from the user -->
                Please enter the following details : <br><br>
                Name : <input type= "text" name="candidateName" required > <br> <br>

                
                <!-- Submit, Reset and Link to go other page -->
                <input type="submit" value="Submit">
                <input type="reset" value="Reset"> <br> <br> <br>
                To return previous page, <a href="PCIndex.jsp"> Click Here </a>
                
                
                
           
            </p>    </center>
    </body>
</html>
