<%-- 
    Document   : recep3a
    Created on : Nov 6, 2018, 3:50:01 PM
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
        <form action="recep.jsp" method="POST">
         <div><button type="submit" id="lobtn" style="float:left">Back</button></div>
         </form>
         <form action="main.jsp" method="POST">
         <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
         </form>
       <%  String p=request.getParameter("a9");
        int d=Integer.parseInt(p);
        String r=request.getParameter("pi9");
        int s1=Integer.parseInt(r);
        String x=request.getParameter("pa9");
        float x1=Float.parseFloat(x);
        String s=request.getParameter("rs9");
        float s2=Float.parseFloat(s);
       
       

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
            PreparedStatement ps2=con.prepareStatement("Select p_id from patient where p_id=?");
           ps2.setInt(1,s1);
           ResultSet rs2=ps2.executeQuery();
           if((x1>=s2)){
           if(rs2.next()){
           String query="insert into billing(billno,p_id,p_cost,adv_amt) values('"+d+"','"+s1+"','"+x1+"','"+s2+"')";
           Statement ps=con.createStatement();
           int rs=ps.executeUpdate(query);
           CallableStatement cst=con.prepareCall("{call ex2(?,?,?)}");
           cst.setInt(1,d);
           cst.setFloat(2,x1);
           cst.setFloat(3,s2);
           cst.execute();
           
           
           
           if((rs==1))
           {
               response.sendRedirect("successrecep.jsp");
               
           }
           else{
               response.sendRedirect("invalid.jsp");
           } }
           else {%>
           <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Patient ID Does Not Exist</span></h2>
           <%
       } }
else { %>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Advance amount should be less than total cost</span></h2>
<% }
}           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
    </body>
</html>

