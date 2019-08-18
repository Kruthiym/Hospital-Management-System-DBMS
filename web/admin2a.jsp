<%-- 
    Document   : admin2a
    Created on : Nov 2, 2018, 8:37:42 PM
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
        <%  String p1=request.getParameter("d4");
        int d1=Integer.parseInt(p1);
       String q1=request.getParameter("a4");
        String s1=request.getParameter("n4");
       String w1=request.getParameter("p4");
       long p4=Long.parseLong(w1);
       String x1=request.getParameter("do4");
        String y1=request.getParameter("pa4");
        String z1=request.getParameter("mf4");
        String t1=request.getParameter("rs4");

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query1="insert into receptionist values('"+d1+"','"+s1+"',to_date('"+x1+"','DD-MM-YYYY'),'"+z1+"','"+t1+"','"+q1+"','"+p4+"','"+y1+"')";
           Statement ps1=con.createStatement();
           int rs1=ps1.executeUpdate(query1);
          
           
           if(rs1==1)
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