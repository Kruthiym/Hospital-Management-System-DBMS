<%-- 
    Document   : main1a
    Created on : Nov 2, 2018, 7:59:15 PM
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
         Cookie cookie1=new Cookie("aid",z);
         Cookie cookie2=new Cookie("aname",x);
       cookie1.setMaxAge(60*60*24);
       cookie2.setMaxAge(60*60*24);
       response.addCookie(cookie1);
        response.addCookie(cookie2);%>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           PreparedStatement ps=con.prepareStatement("Select a_id,a_name,a_pwd from admin where a_id=? and a_name=? and a_pwd=?");
           ps.setString(1,z);
           ps.setString(2,x);
           ps.setString(3,y);
           ResultSet rs=ps.executeQuery();
           
           if(rs.next())
           {
               response.sendRedirect("admin.jsp");
               
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

