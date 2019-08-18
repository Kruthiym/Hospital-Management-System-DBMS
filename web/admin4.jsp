<%-- 
    Document   : admin4
    Created on : Nov 6, 2018, 4:25:43 PM
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
     
    
    <h2 id="container">&nbsp;&nbsp;Add Medicines Details</h2>
    </center>
       <form action="admin4a.jsp" method="POST">
    <table border="0">
        <tbody>
            <% ResultSet rs1;
        PreparedStatement ds;
        Connection con;
       String emp_id;
       String name;
       String printrow;
       
       %>
           
                   
                       <%  try{
        Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query1="select m_seq.nextval from dual";
           ds=con.prepareStatement(query1);
           rs1=ds.executeQuery();

while (rs1.next()){
%> 
            <tr>
                <td width="20%"></td>
                <td> <h3>M_id:</h3></td>
                <td><h3><input type="text" name="d" value="<%=rs1.getInt(1)%>" readonly/></h3></td>
                <td width="7%"></td>
                <td><h3>Name:</h3></td>
                <td><h3><input type="text" name="a" value="" maxlength="25" required/></h3></td>
                <td width="20%"></td>
                
            </tr>
            <% } %>
<%
// close all the connections.
rs1.close();
ds.close();
con.close();
} catch (Exception ex) {
%>
        <%
out.println("Unable to connect to database.");
}
%>
            <tr>
                <td></td>
                <td> <h3>Quantity:</h3></td>
                <td><h3><input type="text" name="n" value="" maxlength="10" pattern="^[0-9]*$" required/></h3></td>
                <td></td>
                <td> <h3>Price:Rs</h3></td>
                <td><h3><input type="text" name="p1" value=""  maxlength="12" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="300.00" required/></h3></td>
                <td></td>
            </tr>
           
            
        </tbody>
    </table>
     
            <center>
                <div><button type="submit" id="svbtn" >Save</button></div>
      </center>
        </form>
    </body>
</html>
