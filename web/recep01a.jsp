<%-- 
    Document   : recep01a
    Created on : Nov 21, 2018, 8:25:08 AM
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
<button type="submit" id="svbtn" style="float:left">Back</button>
           </form>
                <form action="main.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
                </form>
                <form action="recep01b.jsp" method="POST">
        <center>
        <% ResultSet rs1;
        PreparedStatement ds;
        ResultSet rs2;
        PreparedStatement ds1;
        ResultSet rs7;
        PreparedStatement ds7;
        Connection con;
       String p_name;
       String p_dob;
       String p_sex;
       String printrow;
        String z=request.getParameter("pp");
       String p=request.getParameter("sw");
       String n=request.getParameter("nd");
       %>
      
                        <%  try{
        Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
          
           String query="select p_id from Patient where p_id=?";
           ds1=con.prepareStatement(query);
           ds1.setString(1,z);
           rs2=ds1.executeQuery();
           if(rs2.next()){
                String query1="select s.d_id,s.slot,s.dd from schedule s,doctor d where s.d_id=d.d_id and d.d_specialization=? and s.status=0";
           ds=con.prepareStatement(query1);
           ds.setString(1,p);
           rs1=ds.executeQuery();
           
           
%>
            <TABLE cellpadding="15" border="1" style="background-color: #ffffcc;">

<tr> 
<th>D_id</th>
 <th>Available slot</th>
 <th>Available Date</th>
 
</tr>            
            <%

while (rs1.next()){
%>   

<TR align="center">
<TD><%=rs1.getInt(1)%></TD>
<TD><%=rs1.getInt(2)%></TD>
<TD><%=rs1.getDate(3)%></TD>
</TR>
       <% }
       %>
       <h3>Doctor Specialization:<input type="text" name="ds" value="<%=p%>" readonly/></h3>
         
  
       
<table border="0">
        <tbody>
            <tr>
                <td> <h3>P_id:</h3></td>
                <td><h3><input type="text" name="pid6" value="<%=z%>" readonly/></h3></td>
                <td width="5%"></td>
              
                <td><h3>D_Id:</h3></td>
                <td><h3><input type="text" name="did6" value="" maxlength="10" pattern="^[0-9]*$" required/></h3></td>
                 <td width="5%"></td>
                 
                 
               
                
            </tr>
            <% 
       
           String query7="select a_seq.nextval from dual";
           ds7=con.prepareStatement(query7);
           rs7=ds7.executeQuery();

while (rs7.next()){
%> 
            <tr>
                <td><h3>A_id:</h3></td>
                <td><h3><input type="text" name="aid6" value="<%=rs7.getInt(1)%>" maxlength="10" readonly/></h3></td>
                <td width="5%"></td>
               <td><h3>Slot:</h3></td>
                <td><h3><input type="text" name="ti6" value="" maxlength="10" pattern="^[0-9]*$" required/></h3></td>
                
                
              
                
            </tr>
             <% } %>
            <tr>
               <td><h3>Reason:</h3></td>
                 <td><h3><input type="text" name="r6" value="<%=n%>" readonly/></h3></td>
                
                <td width="5%"></td>
                <td><h3>Date:</h3></h3></td>
                <td><h3><input type="text" name="da6" value="" maxlength="11" pattern="^(0[1-9]|[1-9]|[12][0-9]|3[01])-([Jj][Aa][Nn]|[Ff][Ee][Bb]|[Mm][Aa][Rr]|[Aa][Pp][Rr]|[Mm][Aa][Yy]|[Jj][Uu][Nn]|[Jj][Uu][Lj]|[Aa][Uu][Gg]|[Ss][Ee][Pp]|[Oo][Cc][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])-(19|20)\d\d$" placeholder="01-Jan-2018" required/></h3></td>
                <td width="5%"></td>
                
                
                
        
               
            </tr>
           
    </table>
                <button type="submit" id="svbtn" >Save</button>
           </form>
                
                

                
        <%  }
else { %>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Patient ID does not Exist</span></h2>
    
<% } 
// close all the connections.

con.close();
} catch (Exception ex) {
%>

        <%
out.println("Unable to connect to database.");
}
%>   
   


        </body>
</html>




