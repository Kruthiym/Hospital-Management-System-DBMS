<%-- 
    Document   : success
    Created on : Nov 2, 2018, 8:52:41 PM
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
                <br></br>
                <h2><span style="color:black">Saved Succesfully!</span></h2>
                <br></br>
                <form action="admin.jsp" method="POST">
                 <div><button type="submit" id="lobtn" style="float:center">Return to Administrator Home</button></div>
                 </form>
                 <form action="main.jsp" method="POST">
                 <div><button type="submit" id="lobtn" style="float:center">Log out</button></div>
                 </form>
    </center>
    </body>
</html>

