<%-- 
    Document   : admin1a
    Created on : Nov 2, 2018, 8:37:30 PM
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
        String r=request.getParameter("s");
        String s=request.getParameter("n");
       String w=request.getParameter("p1");
       long p1=Long.parseLong(w);
       String x=request.getParameter("dob");
        String y=request.getParameter("pa");
        String z=request.getParameter("m");
        String t=request.getParameter("rs");

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query="insert into doctor values('"+d+"','"+s+"','"+x+"','"+z+"','"+r+"','"+t+"','"+q+"','"+p1+"','"+y+"')";
           Statement ps=con.createStatement();
           int rs=ps.executeUpdate(query);
           
           if(rs==1)
           {
               response.sendRedirect("successadmin.jsp");
               
           }
           else{
               response.sendRedirect("invalid.jsp");
           }
       }
           catch(Exception e){
                  out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
       
    </body>
</html>
