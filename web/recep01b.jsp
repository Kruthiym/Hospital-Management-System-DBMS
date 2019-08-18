<%-- 
    Document   : recep01b
    Created on : Nov 21, 2018, 8:48:27 AM
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
               <form action="recep.jsp" method="POST">
<button type="submit" id="svbtn" style="float:left">Back</button>
           </form>
                <form action="main.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
                </form>
       <%  String p=request.getParameter("pid6");
        int d=Integer.parseInt(p);
       String q=request.getParameter("da6");
        String r=request.getParameter("r6");
        String s=request.getParameter("aid6");
        int s1=Integer.parseInt(s);
       String w1=request.getParameter("ti6");
       int w=Integer.parseInt(w1);
       String x=request.getParameter("did6");
       int d1=Integer.parseInt(x);
        String t=request.getParameter("ds");
     %>
       <% 
 
        try{
             ResultSet rs;
        PreparedStatement ds1;
        Class.forName("oracle.jdbc.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@home-PC:1521:XE","b1","b1");
           String query1="select s.d_id,s.slot,s.dd from schedule s,doctor d where s.d_id=d.d_id and s.d_id=? and s.slot=? and s.dd=? and d.d_specialization=? and s.status=0";
           ds1=con.prepareStatement(query1);
           ds1.setInt(1,d1);
           ds1.setInt(2,w);
           ds1.setString(3,q);
           ds1.setString(4,t);
            rs=ds1.executeQuery();
            if(rs.next()){
           String query2="insert into appointment values('"+s1+"','"+d+"','"+d1+"','"+q+"','"+w+"','"+r+"')";
           Statement ps2=con.createStatement();
           int rs2=ps2.executeUpdate(query2);
           CallableStatement cst1=con.prepareCall("{call ex(?,?,?)}");
           cst1.setInt(1,d1);
           cst1.setInt(2,w);
           cst1.setString(3,q);
           cst1.execute();
           if((rs2==1))
           {
               response.sendRedirect("successrecep.jsp");
               
           }
           else{
               response.sendRedirect("invalid.jsp");
           }
       } 
        else { %>
               
        <h2>&nbsp;<span style="black">You have Entered wrong Schedule</span></h2>
       

<% } }
           catch(Exception e){
                   System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                   }
                    
       %>
    </body>
</html>
