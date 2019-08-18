<%-- 
    Document   : recep1
    Created on : Nov 3, 2018, 10:24:22 PM
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
                <form action="main.jsp" method="POST">
                <div><button type="submit" id="lobtn" style="float:right">Log out</button></div>
                </form>
        
       <h2 id="container">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Appointment</h2>
       </center>
     <form action="recep1a.jsp" method="POST">
     <table border="0">
        <tbody>
            <tr>
                <td> <h3>P_id:</h3></td>
                <td><h3><input type="text" name="pid6" value="" /></h3></td>
                <td width="15%"></td>
                <td><h3>Reason:</h3></td>
                 <td><h3><input type="text" name="r6" value="" /></h3></td>
                <td width="15%"></td>
                <td><h3>D_Id:</h3></td>
                <td><h3><input type="text" name="did6" value="" /></h3></td>
                 
               
                
            </tr>
            <tr>
                <td><h3>A_id:</h3></td>
                <td><h3><input type="text" name="aid6" value="" /></h3></td>
                <td width="15%"></td>
                <td><h3>Address:</h3></td>
                <td><h3><input type="text" name="ad6" value="" /></h3></td>
                <td width="15%"></td>
                <td></td>
                <td> <h3>Doctor Specialization:<select name="sp6" style="height:42px;width:215px;">
            <option>Cardiologist</option>
            <option>Physician</option>
            <option>Paediatrician</option>
            <option>Ophthalmologist</option>
            <option>Anesthesiologist</option>
            <option>Gynecologist</option>
            <option>Dermatologist</option>
            <option>ENT Specialist</option>
                
              
                
            </tr>
            <tr>
                <td> <h3>Name:</h3></td>
                <td><h3><input type="text" name="n6" value="" /></h3></td>
                <td></td>
                <td> <h3>Phone:</h3></td>
                <td><h3><input type="text" name="ph6" value="" /></h3></td>
                <td width="15%"></td>
                <td><h3>Date:</h3></h3></td>
                <td><h3><input type="text" name="da6" value="" /></h3></td>
                
        </select></h3></td>
               
            </tr>
            <tr>
                <td><h3>DOB:</h3></td>
                <td><h3><input type="text" name="do6" value="" /></h3></td>
                <td width="15%"></td>
                <td><h3>Gender:</h3></td>
                <td><h3><input type="radio" name="mf6" value="M" />M<input type="radio" name="mf6" value="F" />F</h3></td>
                <td></td>
                <td><h3>Slot:</h3></td>
                <td><h3><input type="text" name="ti6" value="" /></h3></td>
                
                
            </tr>
           
        </tbody>
    </table>
         <center>
      <button type="submit" id="svbtn" >Book Appointment</button>
       </center>
      </form>
               
    </body>
</html>