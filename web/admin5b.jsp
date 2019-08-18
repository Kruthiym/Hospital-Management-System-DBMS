<%-- 
    Document   : admin5b
    Created on : Nov 21, 2018, 1:11:00 PM
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
#resetbtn {
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: auto;
   
    background-color: #f44336;
}
        </style>
    </head>
    <body>
        <center>
               <h1><span style="black"><font size="10">Elixir Hospital</font></span></h1>
        </center>
    <FORM ACTION="admin.jsp" method="get" >
<div><button type="submit" id="lobtn" style="float:left">Back</button></div>
</form>
    <form action="main.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
                </form>
    <center>
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h3 id="container">Complete Schedule Details</h3></p>
    <%
try {


Statement statement = null;

ResultSet rs = null;
 Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
statement = con.createStatement();

String QueryString = "Select * from Schedule order by dd,d_id,slot";
rs = statement.executeQuery(QueryString);
%>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">

<tr> 
<th>Doctor ID</th>
 <th>Slot</th>
 <th>Date</th>
 <th>Status</th>
</tr>
<%

while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getInt(2)%></TD>
<TD><%=rs.getDate(3)%></TD>
<TD><%=rs.getInt(4)%></TD>
</TR>
<% } %>
</TABLE><TABLE>
    <h3><b><font  color="red"></b>Caution:All the schedules would be deleted!<h3>
<TR>
<TD><FORM ACTION="admin5db.jsp" method="get" >
<div><button type="submit" id="resetbtn" style="float:left">Delete Batch</button></div>
</form></TD>
</TR>
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

<center>
            
 
</center>
    </body>
</html>
