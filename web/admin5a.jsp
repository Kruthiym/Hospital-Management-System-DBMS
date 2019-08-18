<%-- 
    Document   : admin5a
    Created on : Nov 16, 2018, 6:52:32 PM
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
            background-image:url("folder2/k4.jpg");
            background-repeat:no-repeat;
            background-size:cover;
            }
           input[type=text],  input[type=text], input[type=text], input[type=text], input[type=text], input[type=text], input[type=text] {
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
#container h2{
                list-style:none;
                display:inline-block;
            }
            #container h2{
                background-color:burlywood;
                width:150px;
                border:1px solid white;
                height:50px;
                line-height:50px;
                text-align:center;
                float:left;
                font-size:18px;
                opacity:.8;
               
               
            }
            #container h2:hover{
               background-color:brown;
               color:white;
               
            }
            h1{
                text-shadow:3px 2px #cccccc;
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
        </style>
    </head>
    <body>
       
    <center>
        <h1><span style="black"><font size="10">Elixir Hospital</font></span></h1>
      <form action="admin.jsp" method="POST">
         <div><button type="submit" id="lobtn" style="float:left">Back</button></div>
         </form>
         <form action="main.jsp" method="POST">
         <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
         </form>
        <%  String p=request.getParameter("d");
        int d=Integer.parseInt(p);
       String q=request.getParameter("a");
       int d1=Integer.parseInt(q);
        String r=request.getParameter("do1");
      
       
        

       %>
       <% 
 
        try{
            Connection con=null;
        
        Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
          PreparedStatement ps1=con.prepareStatement("Select d_id,slot,dd from schedule where d_id=? and slot=? and dd=?");
           ps1.setInt(1,d);
           ps1.setInt(2,d1);
           ps1.setString(3,r);
           ResultSet rs1=ps1.executeQuery();
           PreparedStatement ps2=con.prepareStatement("Select d_id from doctor where d_id=?");
           ps2.setInt(1,d);
           ResultSet rs2=ps2.executeQuery();
           if(rs2.next()){
           if(!rs1.next())
           {
            String query="insert into schedule(d_id,slot,dd) values('"+d+"','"+d1+"','"+r+"')";
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
           else { %>
           <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">This schedule is Already Present</span></h2>
       <% } }
else { %>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Doctor ID Does Not Exist</span></h2>
<% } }
           catch(Exception e){
                  out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
       
    </body>
</html>

