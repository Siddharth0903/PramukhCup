<%-- 
    Document   : PCFormDetail
    Created on : Mar 3, 2020, 9:37:01 AM
    Author     : Siddharth Patel
--%>

<%@page import="Model.PCModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Siddharth Patel</title>
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
    </head>
    <body>
       <center>    <h1>Registration Details</h1>
        <form method="Post" action="PCDatabaseCon" > 
        <p> <%  PCModel user1 = (PCModel) request.getAttribute("user1");  %> </p>
        <p> <%  String match = (String) request.getAttribute("match");  %> </p>
        <table> 
            <tr>
                <th> Variable </th>
                <th> Value </th> 
            </tr>    
            <tr>
                     <td>  Full Name :   </td>
                      <td> <%= user1.getFullName()%> </td> 
            </tr>
            <tr>
                   <td>  Player's Email :  </td>
                  <td> <%= user1.getpEmail()  %> </td>
            </tr> 
            <tr>
                    <td> Players's Phone Number :  </td>
                    <td> <%=user1.getpPhone() %> </td> 
            </tr>
                    <td>     Team Name :  </td>
                    <td> <%= user1.getTeamName() %> </td>  
            </tr>
            <tr>
                     <td>  Manager's Email :  </td> 
                     <td> <%= user1.getmEmail() %> </td> 
            </tr>
            <tr>
                   <td>    Entry Fee Paid  :  </td>
                   <td> <%= user1.getEntryFee() %> </td> 
            </tr> </table>
            
                  
                   
                   
                   <!-- Submit, Reset and Link to go other page -->
            <br> <br> <p> To return first page, <a href="PCIndex.jsp"> Click Here </a> <br> <br>
                To return previous page, <a href="PCForm.jsp"> <input type="button" value=" Register Again"> <br><br> </a> 
                <a href="PCDatabaseDetail.jsp">
                    
                    
                 <input type="button" name = "database" value= "See Databse" ></a> </p>
                 <input type ="text" name = "searchtext" > 
                 <input type="submit" value = "Search" action="PCDatabaseCon"> 
                   
    </center>   
    </body>
</html>
