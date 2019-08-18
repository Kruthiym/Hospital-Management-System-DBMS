<%-- 
    Document   : main2
    Created on : Nov 2, 2018, 7:38:34 PM
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
            <%--here--%>
            body {font-family: Arial, Helvetica, sans-serif;}
<%--form {border: 3px solid #f1f1f1;}--%>

input[type=text], input[type=password] {
    width: auto;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing:border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: auto;
}

button:hover {
    opacity: 0.8;
}

.resetbtn {
    width: auto;
   
    background-color: #f44336;
}



.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    
    .resetbtn {
      width: 100%; 
    }
}
            <%--herend--%>
           
            *{
                margin:0px;
                padding:0px
            }
            #container ul{
                list-style:none;
                display:inline-block;
            }
            #container ul li{
                background-color:darkturquoise;
                width:150px;
                border:1px solid white;
                height:50px;
                line-height:50px;
                text-align:center;
                float:left;
                font-size:18px;
                opacity:.8;
               
               
            }
            #container ul li:hover{
               opacity:0.8;
               color:white;
               
            }
            #container ul ul{
                display:none;
            }
            #container ul li:hover > ul{
                display:block;
                
            }
            h1{
                font-family:"Times New Roman",Times,serif;
                text-shadow:3px 2px aqua;
            }
             #container li a {
            text-decoration: none;
           color:black;
}

#container li a:hover {
     opacity:0.8;
     color:white;
}
        </style>
    </head>
    <body>
         <script>
function myFunction() { 
    document.getElementById("demo").innerHTML = "Elixir Hospital, 18th Cross, Bangalore - 764032.";
    document.getElementById("demo1").innerHTML = "                  Phone : 080 - 211111 ";
    document.getElementById("demo2").innerHTML = "                 e-mail: belief@elixir.com";
}
</script>
      <center>
          <h1><span style="black"><font size="10">Elixir Hospital</font></span></h1>
           <br></br>
           </center>
<form action="main2a.jsp" method="POST">
    <center> 
    <div id='container'>
        <ul>
            <li> <a href="main.jsp">Home</a></li>
            <li><a href="dept.jsp">Departments</li>
            <li> <a href="gal.jsp">Gallery</a></li>
            <li>About Us
            <ul>
                <li> <a href="st.jsp">Our Story</a></li>
                <li> <a href="abt.jsp">Vision Mission</a></li>
            </ul>
                </li>
                <li><a onclick="myFunction()">Contact Us</a></li>
                <br></br>
                <br></br>
                
                <p id="demo"></p>
                <p id="demo1"></p>
                <p id="demo2"></p>
        </ul>

    </div>
    </center>

    <br></br>
    <center>
    </center>

    <center>
   
       <h3>Login</h3>
  <div class="container">
      <label for="uname"><b>User Type : Receptionist</b></label>
      
      <br></br>
  
      <label for="uid"><b>Receptionist Id</b></label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" placeholder="Enter User Id" name="uid" required>
<br></br>
      <label for="uname"><b>Receptionist Name</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required>
<br></br>
    <label for="psw"><b>Password</b></label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" placeholder="Enter Password" name="psw" required>
       <br></br> 
       <button type="reset" class="resetbtn">Reset</button>
    <button type="submit" >Login</button>


    </center>
    </form>
    </body>
</html>
