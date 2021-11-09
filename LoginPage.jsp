<%-- 
    Document   : Login
    Created on : Dec 18, 2017, 10:29:42 PM
    Author     : raj
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function validateForm() {
                var x = document.forms["myForm"]["i"].value;
                if (x === "") {
                    alert("Email ID must be filled out");
                    return false;
                }
            }
            function validateForm() {
                var x = document.forms["myForm"]["p"].value;
                if (x === "") {
                    alert("Password must be filled out");
                    return false;
                }
            }
        </script>
        <style>
            body
            {
                background-color: sandybrown;
            }
            /*table td{padding:10px;}*/
            table  {
                width:40%;height: 60%;
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 20px; 
                width: 40px;
                height: 55px; 
            }
            /*td {
                background-color: red;
                border-top-right-radius: 25px 15px; 
                border: 2px solid #73AD21;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }
            td {                
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }*/
            input
            {
                background-color: white;
                -f-border-radius: 15 px;
                border-radius: 15px;
                border: solid 1px royalblue;
                padding: 5px;
            }
            input[type=submit] {
                display: inline-block;
                border-radius: 4px;
                background-color: #f4511e;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px; 
            }
            input[type=reset] {
                display: inline-block;
                border-radius: 4px;
                background-color: #f4511e;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px; 
            }
            /*input{
                width: 120px;   
                height: 120px;
            }*/
            h1{
                background-color: gold;
                border-radius: 25px;
                border: 2px solid red;
                padding: 20px; 
                width: 150px;
                height: 35px;
            }
            font{
            }            
        </style>
    </head>    
    <body>
    <center>
        <h1 style="font-family: Verdana;color: purple">Login</h1>
        <form name="myForm" action="LoginServlet" onsubmit="return validateForm()" method="post">
            <table border="1px solid orange" padding="5px">
                <tr>                                    
                    <td style="font-family: Verdana">
                        <label for="i">Email Id</label><br>
                        <input type="text" placeholder="             Email  Id" name="email" required="Please fill out this filled"></td>
                </tr>
                <tr>
                    <td style="font-family: Verdana">
                        <label for="p">Password</label><br>
                        <input type="password" placeholder="             Password" name="pass" required="Please fill out this filled"></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="submit" value="Login"></td>
                    <td style="font-family: Verdana"><input type="reset" value="Reset"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
