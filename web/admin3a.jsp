<%-- 
    Document   : admin3a
    Created on : Nov 18, 2018, 4:39:45 PM
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
               <br></br>
    
    <%
try { 
    ResultSet rs2;
    ResultSet rs1;
    PreparedStatement ds1;
    String p1=request.getParameter("search");
        int d1=Integer.parseInt(p1);
ResultSet rs=null;
Connection con=null;

Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           PreparedStatement ps1=con.prepareStatement("select p.*,t.a_id,t.p_diagnosis from patient p,patientsummary t where p.p_id=t.p_id and p.p_id=?");
           ps1.setInt(1,d1);
             rs1=ps1.executeQuery();
          PreparedStatement ps=con.prepareStatement("select p.*,t.a_id,t.p_diagnosis from patient p,patientsummary t where p.p_id=t.p_id and p.p_id=?");
           ps.setInt(1,d1);
         
           rs=ps.executeQuery();
        
       String query="select p_id from Patient where p_id=?";
           ds1=con.prepareStatement(query);
           ds1.setInt(1,d1);
           rs2=ds1.executeQuery();
          
           if(rs2.next()){   
               
           if(rs1.next()){
       %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h2 id="container">Patient Details</h2>
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
<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getDate(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><%=rs.getString(7)%></TD>
<TD><%=rs.getString(8)%></TD>
</TR>
<% } } else { %>
<br></br>
    <h2><span style="black">No Records</span></h2>
 <% } }
else { %>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Patient ID does not Exist</span></h2>
    
<% } 
// close all the connections.
rs.close();
ps.close();
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
<TD><FORM ACTION="admin3.jsp" method="get" >
<div><button type="submit" id="lobtn" style="float:right">Back to Patient Details</button></div></TD>
</form>
</TR>
<center>
            
 
</center>
    </body>
</html>
