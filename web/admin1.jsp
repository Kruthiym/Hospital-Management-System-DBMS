<%-- 
    Document   : admin1
    Created on : Nov 2, 2018, 8:37:09 PM
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
           input[type=text],input[type=password],  input[type=text], input[type=text], input[type=text], input[type=text], input[type=text], input[type=text] {
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
     
    
    <h2 id="container">&nbsp;&nbsp;Add Doctor Details</h2>
    </center>
       <form action="admin1a.jsp" method="POST">
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
           String query1="select d_seq.nextval from dual";
           ds=con.prepareStatement(query1);
           rs1=ds.executeQuery();

while (rs1.next()){
%> 
            <tr>
                
                <td> <h3>D_id:</h3></td>
                <td><h3><input type="text" name="d" value="<%=rs1.getInt(1)%>" readonly/></h3></td>
                <td width="15%"></td>
                <td><h3>Address:</h3></td>
                <td><h3><input id="ida" type="text" name="a" value="" maxlength="20"  required/></h3></td>
                <td width="15%"></td>
                <td><h3>Specialization:</td><td><select name="s" style="height:42px;width:215px;"></h3>
            <h3><option>Physician</option>
            <option>Cardiologist</option>
            <option>Gynaecologist</option>
            <option>Pediatrician</option>
            <option>ENT Specialist</option>
                    </select></h3></td>
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
                <td> <h3>Name:</h3></td>
                <td><h3><input id="idn" type="text" name="n" value="" maxlength="20" onkeypress="return (event.charCode > 64 && 
	event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"  required/></h3></td>
                <td></td>
                <td> <h3>Phone:</h3></td>
                 <td><h3><input id="text1" type="text" name="p1" value="" maxlength="10" onkeypress="return IsNumeric(event);" ondrop="return false;" onpaste="return false;" required/><span id="error" style="color: Red; display: none">* Enter Input digits (0 - 9)</span></h3></td>
                 <td></td>
                 <td><h3>Password:</h3></td>
                <td><h3><input id="idp" type="password" name="pa" value="" maxlength="10" placeholder="example1" required/></h3></td>
            </tr>
            <tr>
                <td><h3>DOB:</h3></td>
                <td><h3><input id="idd" type="text" name="dob" value=""  maxlength="11" pattern="^(0[1-9]|[1-9]|[12][0-9]|3[01])-([Jj][Aa][Nn]|[Ff][Ee][Bb]|[Mm][Aa][Rr]|[Aa][Pp][Rr]|[Mm][Aa][Yy]|[Jj][Uu][Nn]|[Jj][Uu][Lj]|[Aa][Uu][Gg]|[Ss][Ee][Pp]|[Oo][Cc][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])-(19|20)\d\d$" placeholder="01-Jan-1998" required/></h3></td>
                <td></td>
                <td><h3>Gender:</h3></td>
                <td><h3><input type="radio" name="m" value="M" checked="true"/>M<input type="radio" name="m" value="F" />F</h3></td>
                <td></td>
                <td><h3>Salary:Rs.</h3></td>
                <td><h3><input id="ids" type="text" name="rs" value="" maxlength="12" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" placeholder="500000.00" required/></h3></td>

            </tr>
            
            
        </tbody>
    </table>
           <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
    </script>
     
            <center>
                <div><button type="submit" id="svbtn" >Save</button></div>
      </center>
        </form>
    </body>
</html>
