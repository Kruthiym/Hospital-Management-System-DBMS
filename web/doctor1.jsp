<%-- 
    Document   : doctor
    Created on : Nov 6, 2018, 4:14:07 PM
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
                text-shadow:3px 2px aqua;
            }
        </style>
    </head>
    <body>
        <center>
        
         <h1><span style="black"><font size="10">Elixir Hospital</font></span></h1>
           <br></br>
           </center>
        <form action="doctor.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:left">Back</button></div>
                </form>
      
  <form action="main.jsp" method="POST">
  <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
  </form>
            <form action="doctor1a.jsp" method="POST">
          
            
           <div id='container' align="center">
        <ul>
            <li>Appointment</li>
            
        </ul>
           </div>
                <center>
        <% ResultSet rs1;
        PreparedStatement ds;
        Connection con;
       String p_name;
       String p_dob;
       String p_sex;
       String printrow;
       String p=request.getParameter("p21");
       int d=Integer.parseInt(p);
       String p1=request.getParameter("ne");
       int q=Integer.parseInt(p1);
       %>
      
                       <%  try{
                            ResultSet rs2;
        PreparedStatement ds1;
        ResultSet rs4;
        PreparedStatement ds4;
        Class.forName("oracle.jdbc.OracleDriver");
           con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
          
           String query="select p_id,a_id from appointment where p_id=? and a_id=?";
           ds1=con.prepareStatement(query);
           ds1.setInt(1,d);
            ds1.setInt(2,q);
           rs2=ds1.executeQuery();
           if(rs2.next()){
               String query4="select p_id,a_id from Patientsummary where p_id=? and a_id=?";
           ds4=con.prepareStatement(query4);
           ds4.setInt(1,d);
            ds4.setInt(2,q);
           rs4=ds4.executeQuery();
           if(!rs4.next()){
                String query1="select p.p_name,trunc(months_between(sysdate,p.p_dob)/12),trunc(mod(months_between(sysdate,p.p_dob),12)),p.p_sex from patient p,appointment a where a.p_id=p.p_id and p.p_id=? and a.a_id=?";
           ds=con.prepareStatement(query1);
           ds.setInt(1,d);
            ds.setInt(2,q);
           rs1=ds.executeQuery();
           


while (rs1.next()){
%>     
                       <h3>A_id:<input type="text" name="aid" value="<%=q%>" readonly/></h3>
           <table border="0">
              
               <tbody>
                   <tr>
                       <td><h3>P_Id:</h3></td>
                       <td><h3><input type="text" name="p21" value="<%=d%>" readonly/></h3></td>
                       <td></td>
                        <td> <h3>Diagnosis:</h3></td>
                        <td><h3><textarea name="d21" value="" style="height:200px;width:300px;" rows="10" cols="30" required/></textarea></h3></td>
                   
                       </tr>
                   <tr>
                       <td> <h3>Name:</h3></td>
                       <td><h3><input type="text" name="pn21" value="<%=rs1.getString(1)%>" readonly/></h3></td>
                       <td></td>
                       <td><h3>Medicine Id:</h3></td>
                       <td><h3><input type="text" name="m21" value="" maxlength="10" pattern="^[0-9]*$" required/></h3></td>
                   
                      </tr>
                   <tr>
                       <td><h3>Age:</h3></td>
                       <td><h3><input type="text" name="age21" value="<%=rs1.getString(2)%> years <%=rs1.getString(3)%> months" readonly/></h3></td>
                       <td width="10%"></td>
                       
                       <td><h3>Remarks:</h3></td>
                       <td><h3><textarea name="r" value="" style="height:200px;width:300px;" rows="10" cols="30" required/></textarea></h3></td>
                       
                       </tr>
                   <tr>
                       <td> <h3>Gender:</h3></td>
                       <td><input type="text" name="n3" value="<%=rs1.getString(4)%>" readonly/></td>
                       <td></td>
                       <td><h3>Patient Category:</h3></td>
                       <td><h3><input type="radio" name="op21" value="Out-Patient" />Out-Patient<input type="radio" name="op21" value="In-Patient" />In-Patient</h3></td>
                   
                   </tr>
               
               </tbody>
           </table>
           <center>
               
           <div><button type="submit" id="svbtn" >Save</button></div>
           </center>
                  
    
        <% } }
else { %>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Appointment with doctor already completed</span></h2>
    
<% } }
else { %>
<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Patient ID Or Appointment Id does not Exist</span></h2>

<% }
con.close();
} catch (Exception ex) {
%>
        <%
out.println("Unable to connect to database.");
}
%>
       </form>
</center>
      
      
</form>
    </body>
</html>
