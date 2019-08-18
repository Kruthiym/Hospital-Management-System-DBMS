<%-- 
    Document   : main3a
    Created on : Nov 2, 2018, 7:59:41 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String x=request.getParameter("uname");
       String y=request.getParameter("psw");
        String z=request.getParameter("uid");
        String w=request.getParameter("user");
        Cookie cookie5=new Cookie("did",z);
         Cookie cookie6=new Cookie("dname",x);
       cookie5.setMaxAge(60*60*24);
       cookie6.setMaxAge(60*60*24);
       response.addCookie(cookie5);
        response.addCookie(cookie6);

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           PreparedStatement ps=con.prepareStatement("Select d_id,d_name,d_pwd from doctor where d_id=? and d_name=? and d_pwd=?");
           ps.setString(1,z);
           ps.setString(2,x);
           ps.setString(3,y);
           ResultSet rs=ps.executeQuery();
           
           if(rs.next())
           {
               response.sendRedirect("doctor.jsp");
               
           }
           else{
               response.sendRedirect("invalidd.jsp");
           }
       }
           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
       
    </body>
</html>
