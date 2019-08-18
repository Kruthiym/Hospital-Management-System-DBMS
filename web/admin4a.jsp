<%-- 
    Document   : admin4a
    Created on : Nov 6, 2018, 4:28:52 PM
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
       <%  String p=request.getParameter("d");
        int d=Integer.parseInt(p);
       String q=request.getParameter("a");
       String q1=request.getParameter("n");
        String r=request.getParameter("p1");
        
       

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query="insert into medicines values('"+d+"','"+q+"','"+q1+"','"+r+"')";
           Statement ps=con.createStatement();
           int rs=ps.executeUpdate(query);
           
           
           if((rs==1))
           {
               response.sendRedirect("successadmin.jsp");
               
           }
           else{
               response.sendRedirect("invalid.jsp");
           }
       }
           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
    </body>
</html>
