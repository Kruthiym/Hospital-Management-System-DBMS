<%-- 
    Document   : gal
    Created on : Dec 2, 2018, 7:04:25 PM
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


button {

    background-color:darkturquoise;
                width:300px;
               
                height:50px;
                line-height:50px;
                text-align:center;
                font-size:18px;
}

button:hover {
    opacity: 0.8;
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
div.gallery {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 180px;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
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


    <br></br>
    <table border="0">
       
        <tbody>
            <tr>
                <td> <div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i1.jpg" target="_blank">
      <img src="folder2/i1.jpg" width="1600" height="1400" alt="i1"/>

  </a>
  
</div></td>
<td> <div class="gallery">
        <a href="http://localhost:8080/dbms/folder2/i2.jpg" target="_blank">
      <img src="folder2/i2.jpg" width="1600" height="1400" alt="i2"/>

  </a>
  
</div></td>
                <td><div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i3.jpg" target="_blank">
      <img src="folder2/i3.jpg" width="1600" height="1400" alt="i3"/>

  </a>
 
</div></td>
                <td><div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i4.jpg" target="_blank">
      <img src="folder2/i4.jpg" width="1600" height="1400" alt="i4"/>

  </a>
 
</div></td>
            </tr>
            <tr>
                <td> <div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i5.jpg" target="_blank">
      <img src="folder2/i5.jpg" width="1600" height="1400" alt="i5"/>

  </a>
  
</div></td>
                <td><div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i6.jpg" target="_blank">
      <img src="folder2/i6.jpg" width="1600" height="1400" alt="i6"/>

  </a>
  
</div></td>
                <td><div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i7.jpg" target="_blank">
      <img src="folder2/i7.jpg" width="1600" height="1400" alt="i7"/>


  </a>
  
</div></td>
                <td><div class="gallery">
                        <a href="http://localhost:8080/dbms/folder2/i8.jpg" target="_blank">
      <img src="folder2/i8.jpg" width="1600" height="1400" alt="i8"/>


  </a>
  
</div></td>
            </tr>
        </tbody>
    </table>
      </center>
    </form>
    </body>
</html>