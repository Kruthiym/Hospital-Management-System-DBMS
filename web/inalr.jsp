<%-- 
    Document   : inalr
    Created on : Dec 2, 2018, 2:27:18 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.math.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
            body {
            background-image:url("folder2/kpp4.png");
            background-repeat:no-repeat;
            background-size:cover;
            }
            input[type=text], input[type=text], input[type=text], input[type=text], input[type=text], input[type=text] {
    width: auto;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing:border-box;
}
          #svbtn {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: auto;
}


#svbtn:hover {
    opacity: 0.8;
}
 #lobtn {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: auto;
}


#lobtn:hover {
    opacity: 0.8;
}
button {
    background-color: darkturquoise;
    color: black;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 300px;
}
button:hover {
 opacity:0.8;
               color:white;
}
            #container ul{
                list-style:none;
            }
            #container ul li{
                background-color:darkturquoise;
                width:300px;
                border:3px solid white;
                height:50px;
                line-height:50px;
                text-align:center;
                font-size:18px;
               
               
               
            }
            #container ul li:hover{
               opacity:.8;
               color:white;
               
            }
            
            #container ul ul{
                display:none;
            }
            #container ul ul li:hover{
               opacity:.8;
               color:white;
               
            }
            #container ul li:hover > ul{
                display:block;
                
            }
            #container ul ul {
                margin-left:260px;
                margin-top:-75px;
            
                color:black;
            }
            h1{
                text-shadow:3px 2px #cccccc;
            }
           <%-- h1{
                text-shadow:3px 2px aqua; } --%>
            
        </style>
    </head>
    <body>
       <% String u=request.getParameter("nam");
        String p=request.getParameter("pas");
        out.println(u);
        out.println(p);
       %>
       <% Connection con= null;
           try{
           Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
            con.setAutoCommit(false);
           PreparedStatement ps=con.prepareStatement("Update receptionist set r_pwd=? where r_id=?");
           ps.setString(1,p);
           ps.setString(2,u);
           ResultSet rs=ps.executeQuery();
           con.commit();
           
           if(rs.next())
           {
               response.sendRedirect("main2.jsp");
               
           }
           else{
               response.sendRedirect("inalr.jsp");
           }
       }
           catch(SQLException e){
                 
                   if(con!=null){
                   try{
                       con.rollback();
                       response.sendRedirect("invalid.jsp");
                   }
                   catch(SQLException ex){
                    
                   }
                   }
           }
                   
       %>
    </body>
</html>
