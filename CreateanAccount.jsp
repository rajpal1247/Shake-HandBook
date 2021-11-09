<%-- 
    Document   : Register
    Created on : Dec 18, 2017, 10:30:01 PM
    Author     : raj
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <style></style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>
        <script type="text/javascript">
            function validateForm() {
            var x = document.forms["myForm"]["f"].value;
            if (x == "") {
            alert("Fname must be filled out");
            return false;
            }
            }
            function validateForm() {
            var x = document.forms["myForm"]["l"].value;
            if (x == "") {
            alert("Lname must be filled out");
            return false;
            }
            }
            function validateForm() {
            var x = document.forms["myForm"]["e"].value;
            if (x == "") {
            alert("Email Id must be filled out");
            return false;
            }
            }
            function validateForm() {
            var x = document.forms["myForm"]["p"].value;
            if (x == "") {
            alert("Password must be filled out");
            return false;
            }
            }

            function validateForm() {
            var x = document.forms["myForm"]["cp"].value;
            if (x == "") {
            alert("Confirm Password must be filled out");
            return false;
            }
            }
        </script>
        <script type="text/javascript">
            function validateEmailId()
            {
            var emailID = document.myForm.EMail Id.value;
            atpos = emailID.indexOf("@");
            dotpos = emailID.lastIndexOf(".");
            if (atpos < 1 || (dotpos - atpos < 2))
            {
            alert("Please enter correct Email ID")
                    document.myForm.EMail Id.focus();
            return false;
            }
            return(true);
            }
        </script>
        <style>
            body
            {
                background-color: sandybrown;
            }
            /*table td{padding:10px;}*/
            fa {
                padding: 20px;
                font-size: 30px;
                width: 250px;
                text-align: center;
                text-decoration: none;
                margin: 15px 20px;
            }

            .fa:hover {
                opacity: 0.7;
            }

            .fa-facebook {
                background: #3B5998;
                color: white;
            }

            .fa-twitter {
                background: #55ACEE;
                color: white;
            }

            .fa-google {
                background: #dd4b39;
                color: white;
            }
            .fa-youtube {
                background: #bb0000;
                color: white;
            }

            table  {
                width:40%;
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 40px; 
                width: 120px;
                height: 115px; 
            }
            /*input {
                width: 150%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
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

            /*td {
                background-color: orange;
                border-radius: 25px;
                border: 2px solid red;
                padding: 20px; 
                width: 40px;
                height: 15px; 
            }*/

            h1{
                background-color: orange;
                border-radius: 25px;
                border: 2px solid red;
                padding: 20px; 
                width: 215px;
                height: 35px;
            }
        </style>        
    </head>  
    <body>
    <center>
        <h1 style="font-family: Verdana;color: green">Sign Up</h1>
        <form name="myForm" action="RegistrationServlet" onsubmit="return validateForm()" method="post">           
            <table border="1px solid black" padding="5px">
                <tr>
                    <td style="font-family: Verdana">
                        <label for="f">First Name</label><br>
                        <input type="text" placeholder="             First Name" name="f" required=""></td>
                </tr>
                <tr> 

                    <td style="font-family: Verdana">
                        <label for="l">Last Name</label><br>
                        <input type="text" placeholder="             Last Name" name="l" required=""></td>
                </tr>
                <tr>

                    <td style="font-family: Verdana">
                        <label for="e">Email Id</label><br>
                        <input type="text" placeholder="             Email Id" name="e" required=""></td>
                </tr>
                <tr>

                    <td style="font-family: Verdana">
                        <label for="p">Password</label><br>
                        <input type="password" placeholder="             Password" name="p" required=""></td>
                </tr>
                <tr>

                    <td style="font-family: Verdana">
                        <label for="p">Confirm Password</label><br>
                        <input type="password" placeholder="         Confirm Password" name="cp" required=""></td>
                </tr>
                <tr>
                    <td style="font-family: Verdana"><input type="submit" value="Sign Up"></td>
                    <td style="font-family: Verdana"><input type="reset" value="Reset"></td>                    
                </tr>
            </table>
        </form>
        <form id="labnol" method="get" action="//www.google.com/search">
            <a href="//www.facebook.com/search" class="fa fa-facebook"></a>
            <a href="//www.twitter.com/search" class="fa fa-twitter"></a>
            <a href="//www.google.com/search" class="fa fa-google"></a>
            <a href="//www.linkedin.com/search" class="fa fa-linkedin"></a>
            <a href="//www.youtube.com/search" class="fa fa-youtube"></a>
        </form>
    </center>
</body>
</html>