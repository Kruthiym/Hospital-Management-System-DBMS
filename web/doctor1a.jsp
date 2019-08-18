<%-- 
    Document   : doctora
    Created on : Nov 6, 2018, 4:14:20 PM
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
      <form action="doctor.jsp" method="POST">
         <div><button type="submit" id="lobtn" style="float:left">Back</button></div>
         </form>
         <form action="main.jsp" method="POST">
         <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
         </form>
      <%  String p1=request.getParameter("aid");
        int pp=Integer.parseInt(p1);
          String p=request.getParameter("p21");
        int d=Integer.parseInt(p);
       String q=request.getParameter("d21");
       String q1=request.getParameter("pn21");
        String x=request.getParameter("m21");
        int s2=Integer.parseInt(x);
        String s=request.getParameter("r");
       String w=request.getParameter("mf21");
       String w1=request.getParameter("op21");
       

       %>
       <% 
 
        try{
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           PreparedStatement ps2=con.prepareStatement("Select m_id from medicines where m_id=?");
           ps2.setInt(1,s2);
           ResultSet rs2=ps2.executeQuery();
           if(rs2.next()){
           String query="insert into patientsummary values('"+pp+"','"+d+"','"+q+"','"+x+"','"+s+"','"+w1+"')";
           Statement ps=con.createStatement();
           int rs=ps.executeUpdate(query);
           
           
           if((rs==1))
           {
               response.sendRedirect("successdoctor.jsp");
               
           }
           else{
               response.sendRedirect("invalid.jsp");
           }
       }
           else { %>
               <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="black">Medicine id does not exist</span></h2>
      <%     } }
           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
    </body>
</html>
