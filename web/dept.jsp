<%-- 
    Document   : dept
    Created on : Dec 5, 2018, 2:46:30 PM
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

div.transbox {
  margin: 30px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
  filter: alpha(opacity=60); 
}

div.transbox p {
  margin: 2%;
  font-weight: bold;
  color: #000000;
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
      
          </center>
  <div class="transbox">
      <font color="black"><p><center><b><h2>Cardiology</h2></b></center>
          <br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Cardiology Department at Elixir Hospital provides complete
          cardiac care, which includes both elective and emergency care by a dedicated
          team of &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cardiologists, cardio-thoracic surgeons, interventional cardiologists,
          cardiology technicians, and paramedical staff.
          
          <br></br>
         
    <br></br>
  <center><b><h2>General Medicine</h2></b></center>
   <br></br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The Department of General Medicine at Elixir Hospital provides primary and secondary medical care for patients
   above 16 years of age. Our team &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;follows a comprehensive approach to preventive health care with an emphasis on sustenance of
   good health achieved through regular physical &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;examinations and screening tests. Our qualified doctors provide initial diagnosis 
   and evaluations for any acute or chronic problems, apart from managing &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and coordinating all your medical care needs.
  <br></br>
   <br></br>
          <center><b><h2>Pediatrics</h2></b></center>
      <br></br>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Pediatrics is the branch of medicine that involves the medical care of infants, 
      children, and adolescent The department functions in conjunction with the &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;department
      of neurology,to provide comprehensive care to the neonate,infant and children.All
      surgical conditions in children from birth are managed in &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;this department.
  <br></br>
    <br></br>
  <center><b><h2>ENT</h2></b></center>
  <br></br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The department is equipped with the latest Ergomed Special Treatment Unit, replete with advanced embedded
  software electronics with integrated  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;facilities for endoscopy, diagnostic microscopy, video-otoscopy, 
  enthermo irrigation and cautery that is a boon for the patients.
   <br></br>
    <br></br>
  <center><b><h2>Gynaecology</h2></b></center>
  <br></br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Comprehensive gynecological services are rendered to address the health care needs of women and the department takes pride in its state-of-the-art
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;labor wards with birthing suites, and round-the-clock epidural anesthesia services are available.
   The department also runs a high-risk pregnancy clinic &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;and an infertility center.
  </p></font>
  </div>

     
 
    </form>
    </body>
</html>