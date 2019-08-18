<%-- 
    Document   : admin5db
    Created on : Nov 21, 2018, 1:37:32 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.math.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query="Delete from Schedule";
           Statement ps=con.createStatement();
           int rs=ps.executeUpdate(query);
           
           
           
               response.sendRedirect("admin5b.jsp");
               
           
       }
           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
    </body>
</html>
