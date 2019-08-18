<%-- 
    Document   : invalidd
    Created on : Dec 2, 2018, 2:46:31 PM
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
            input[type=text], input[type=text], input[type=Password], input[type=text], input[type=text], input[type=text] {
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
            <p><h2><span style="color:black">Login Failure</span></h2></p>
    <form action="main.jsp" method="POST">
    <div><button type="submit" id="lobtn" style="float:center">RETRY</button></div>
    </form>
        <br></br>
        <form action="inald.jsp" method="POST">
            <table border="0">
               
                <tbody>
                    <tr>
                        <td> <p><b><span style="color:black">User ID: </span></b></p></td>
                        <td> <input type="text" name="nam" value="" maxlength="10" pattern="^[0-9]*$" required/></td>
                    </tr>
                    <tr>
                        <td> <p><b><span style="color:black">New Password: </span></b></p></td>
                        <td><input type="password" name="pas" value="" maxlength="10" required/><br></td>
                    </tr>
                </tbody>
            </table>

      
           
    
    <div><button type="submit" id="lobtn" style="float:center">Change Password</button></div>
    </form>
        
      
       </center>
    </body>
</html>

