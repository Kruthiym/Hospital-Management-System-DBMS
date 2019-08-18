<%-- 
    Document   : recep
    Created on : Nov 2, 2018, 8:28:37 PM
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
            background-image:url("folder2/kpp4.png");
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
    font-family:"Arial,Helvetica,sans-serif";
    font-size:15.5px;
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
                border:2px solid white;
                height:55px;
                line-height:50px;
                text-align:center;
                font-size:15.5px;
               
               
               
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
                text-shadow:3px 2px #cccccc;
            }
           <%-- h1{
                text-shadow:3px 2px aqua;
            } --%>
        </style>
    </head>
    <body>
         <% String x=request.getParameter("uid");
        String y=request.getParameter("uname");
            Cookie[] cook=request.getCookies();
        if (cook!=null){
        for(Cookie tcookie : cook)
        {
        if("rid".equals(tcookie.getName())){
        x=tcookie.getValue();
        break;
        }}
        for(Cookie t1cookie : cook)
        {
        if("rname".equals(t1cookie.getName())){
        y=t1cookie.getValue();
        break;
        }}}
        %>
        <center>
        
         <h1><span style="black"><font size="10">Elixir Hospital</font></span></h1>
           
           </center>
        
            <form action="main.jsp" method="POST">
            <div><button type="submit" id="lobtn" style="float:right" >Log out</button></div>
            </form>
            <h3>UserId: <%=x%></h3>
           <h3>User: Receptionist</h3>
           <h3>Username: <%=y%></h3>
           <br></br>
           <br></br>
           <div id='container'>
        <ul>
            
            
            <li button type="submit">Appointment
            <ul>
                <form action="recep01.jsp" method="POST">
                <li><button type="submit" value="o2" />Registered Patient</button></li>
                </form>
                <form action="recepb1.jsp" method="POST">
                <li><button type="submit" value="i2" />New Patient Registration</button></li>
                </form>
            </ul>
            </li>
            <li button type="submit">View Patient Details
            <ul>
                <form action="recep2.jsp" method="POST">
                <li><button type="submit" value="o2" />Out-Patient</button></li>
                </form>
                <form action="recep3.jsp" method="POST">
                <li><button type="submit" value="i2" />In-Patient</button></li>
                </form>
            </ul>
            </li>
            <form action="recep4.jsp" method="POST">
            <li><button type="submit" value="b2" />Billing</button></li>
            </form>
        </ul>

    </div>
           </form>
       </center>
       

</form>
    </body>
</html>
