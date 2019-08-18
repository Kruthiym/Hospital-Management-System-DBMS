<%-- 
    Document   : doctor
    Created on : Nov 12, 2018, 8:24:42 PM
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
         <% String x=request.getParameter("uid");
        String y=request.getParameter("uname");
            Cookie[] coo=request.getCookies();
        if (coo!=null){
        for(Cookie tcookie : coo)
        {
        if("did".equals(tcookie.getName())){
        x=tcookie.getValue();
        break;
        }}
        for(Cookie t1cookie : coo)
        {
        if("dname".equals(t1cookie.getName())){
        y=t1cookie.getValue();
        break;
        }}}
        %>
        <center>
        
         <h1><span style="black"><font size="10">Elixir Hospital</font></span></h1>
           <br></br>
           </center>
       
    <form action="main.jsp" method="POST">
    <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
    </form>
            <h3>UserId: <%=x%></h3>
           <h3>User: Doctor</h3>
           <h3>Username: <%=y%></h3>
           
               <form action="doctor1.jsp" method="POST">

           <center>
               <h2>Please Enter the Appointment ID and Patient ID</h2> 
               <div id="container">
               <table border="0">
                  
                   <tbody>
                       <tr>
                           <td><h3>Appointment ID:</td><td><input type="text" name="ne" value=""  maxlength="10" pattern="^[0-9]*$" required/></h3></td>
                           
                       </tr>
                       <tr>
                           <td><h3>Patient ID:</td><td><input type="text" name="p21" value="" maxlength="10" pattern="^[0-9]*$" required/></h3></td>
                          
                       </tr>
                   </tbody>
               </table>

           
               
               
                <button type="submit" value=""/>Get Info</button>

    </div>
           </center>
        </form>
          

</form>
    </body>
</html>