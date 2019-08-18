<%-- 
    Document   : recepb1
    Created on : Nov 18, 2018, 8:11:14 PM
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
                 <form action="recepc1.jsp" method="POST">
        
       <h2>&nbsp;&nbsp;&nbsp;Reason For Appointment</h2>
       <br></br>
       <table border="0">
           
           <tbody>
               
               <tr>
                   <td><h3>Reason:</h3></td>
                   <td><input type="text" name="nd" value="" maxlength="30" required/></td>
                   
    
                  
               </tr>
               <tr>
                   <td><h3>Doctor Specialization:</h3></td>
                   <td><select name="sw" style="height:42px;width:215px;">
            <option>Physician</option>
            <option>Cardiologist</option>
            <option>Gynaecologist</option>
            <option>Pediatrician</option>
            <option>ENT Specialist</option></select></td>
                   
    
                  
               </tr>
                
           </tbody>
       </table>
       
           <button type="submit" id="svbtn" >Get Appointment Availability</button>
                       </form>
        <%
try {
    
   
       
ResultSet rs=null;
Connection con=null;

Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           PreparedStatement ps=con.prepareStatement("select d_id,d_name,d_specialization from doctor order by d_specialization");
           
          rs=ps.executeQuery();
           
           
       %>
<TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">

<tr> 
<th>D_Id</th>
 <th>Doctor Name</th>
 <th>Specialization</th>
 
</tr>
<%

while (rs.next()) {
%>
<TR align="center">
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
</TR>
<% } %>
<%
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
</TABLE>

       
       </center>
    
    
    </body>
</html>
