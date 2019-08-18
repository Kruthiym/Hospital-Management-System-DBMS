<%-- 
    Document   : admin5
    Created on : Nov 16, 2018, 6:52:19 PM
    Author     : home
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <h2 id="container">&nbsp;&nbsp;&nbsp;Add Appointment Schedule</h2>
       <form action="admin5b.jsp" method="POST">
                <div><button type="submit" id="svbtn" style="float:right">View Complete Schedule</button></div>
      </form>
    
    
   
    </center>
       <form action="admin5a.jsp" method="POST">
    <table border="0">
        <tbody>
            <tr>
                <td width=50%"></td>
                <td> <h3>D_id:</h3></td>
                <td><h3><input type="text" name="d" value="" required/></h3></td>
                <td></td>
                
            </tr>
            <tr>
                <td></td>
                <td><h3>Slot:</h3></td>
                <td><h3><input type="text" name="a" value="" maxlength="11" pattern="^[0-9]*$" required/></h3></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td><h3>Date:</h3></td>
                <td><h3><input type="text" name="do1" value=""  maxlength="11" pattern="^(0[1-9]|[1-9]|[12][0-9]|3[01])-([Jj][Aa][Nn]|[Ff][Ee][Bb]|[Mm][Aa][Rr]|[Aa][Pp][Rr]|[Mm][Aa][Yy]|[Jj][Uu][Nn]|[Jj][Uu][Lj]|[Aa][Uu][Gg]|[Ss][Ee][Pp]|[Oo][Cc][Tt]|[Nn][Oo][Vv]|[Dd][Ee][Cc])-(19|20)\d\d$" placeholder="02-Dec-2018" required/></h3></td>
                <td width="15%"></td>
            </tr>
            
            
            
        </tbody>
    </table>
     
            <center>
                <div><button type="submit" id="svbtn" >Save</button></div>
      </center>
        </form>
    </body>
</html>
