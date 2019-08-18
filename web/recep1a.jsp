<%-- 
    Document   : recep1a
    Created on : Nov 3, 2018, 10:24:41 PM
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
        <%  String p=request.getParameter("pid6");
        int d=Integer.parseInt(p);
       String q=request.getParameter("da6");
        String r=request.getParameter("r6");
        String s=request.getParameter("aid6");
        int s1=Integer.parseInt(s);
       String w=request.getParameter("ti6");
       String x=request.getParameter("did6");
       int d1=Integer.parseInt(x);
        String y=request.getParameter("n6");
        String z=request.getParameter("ph6");
        long p1=Long.parseLong(z);
        String t=request.getParameter("sp6");
        String a=request.getParameter("do6");
        String b=request.getParameter("mf6");
        String c=request.getParameter("ad6");

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query1="insert into patient values('"+d+"','"+y+"',to_date('"+a+"','DD-MM-YYYY'),'"+b+"','"+c+"','"+p1+"')";
           Statement ps1=con.createStatement();
           int rs1=ps1.executeUpdate(query1);
           String query2="insert into appointment values('"+s1+"','"+d+"','"+d1+"','"+q+"','"+w+"','"+r+"')";
           Statement ps2=con.createStatement();
           int rs2=ps2.executeUpdate(query2);
           
           if((rs1==1)&&(rs2==1))
           {
               response.sendRedirect("successrecep.jsp");
               
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