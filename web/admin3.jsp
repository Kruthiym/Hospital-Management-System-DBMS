<%-- 
    Document   : admin3
    Created on : Nov 3, 2018, 10:20:24 PM
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
        </center>
    <form action="admin.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:left">Back</button></div>
                </form>
    <form action="main.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
                </form>
    <br></br>
               <form action="admin3a.jsp" method="POST">
                    <div><button type="submit" id="lobtn" style="float:right">Search</button></div>
                   <h3><input type="text" name="search" value="" style="float:right" placeholder="Patient ID" pattern="^[0-9]*$" required/></h3>
               
                </form>
                
               <br></br>
               <center>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2 id="container">Patient Details</h2>
    <%
try {


Statement statement = null;

ResultSet rs = null;
 Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
statement = con.createStatement();

String QueryString = "select p.*,t.a_id,t.p_diagnosis from patient p,patientsummary t where p.p_id=t.p_id";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">

<tr> 
<th>P_Id</th>
 <th>Patient Name</th>
 <th>DOB</th>
 <th>Gender</th>
<th>Address</th>
<th>Phone number</th>
<th>Appointment Id</th>
<th>Diagnosis</th>
</tr>
<%

while (rs.next()) {
%>
<TR align="center">
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getDate(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getInt(7)%></TD>
<TD><%=rs.getString(8)%></TD>
</TR>
<% } %>
<%
// close all the connections.
rs.close();
statement.close();
con.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="powderblue"></b>
<%
out.println("Unable to connect to database.");
}
%>
</TABLE><TABLE>
<TR>
<TD><FORM ACTION="admin.jsp" method="get" >
<div><button type="submit" id="lobtn" style="float:right">Back</button></div></TD>
</form>
</TR>
<center>
            
 
</center>
    </body>
</html>
