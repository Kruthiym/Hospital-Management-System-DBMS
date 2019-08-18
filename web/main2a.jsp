<%-- 
    Document   : main2a
    Created on : Nov 2, 2018, 7:59:28 PM
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
        Cookie cookie3=new Cookie("rid",z);
         Cookie cookie4=new Cookie("rname",x);
       cookie3.setMaxAge(60*60*24);
       cookie4.setMaxAge(60*60*24);
       response.addCookie(cookie3);
        response.addCookie(cookie4);

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           PreparedStatement ps=con.prepareStatement("Select r_id,r_name,r_pwd from receptionist where r_id=? and r_name=? and r_pwd=?");
           ps.setString(1,z);
           ps.setString(2,x);
           ps.setString(3,y);
           ResultSet rs=ps.executeQuery();
           
           if(rs.next())
           {
               response.sendRedirect("recep.jsp");
               
           }
           else{
               response.sendRedirect("invalidr.jsp");
           }
       }
           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
       
    </body>
</html>
