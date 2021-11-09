<%-- 
    Document   : LinksPage
    Created on : Dec 15, 2017, 7:33:09 AM
    Author     : raj
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" background-color: red>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" background-color: red>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>        
        <style>
            a:hover
            {
                background-color: white;
                font-size:30px;
                width: 100%;                
            }
            body
            {
                background-color: #ff9933;
            }

            span {
                width: 100px;
                height: 50px;
                background: sandybrownn;
                color: white;
                font-weight: bold;
                -webkit-transition: width 2s; /* Safari */
                transition: width 2s;
            }

            /* For Safari 3.1 to 6.0 */
            
            div:hover {
                width: 300px;
            }

            button{
                display: inline-block;
                border-radius: 4px;
                background-color: #f4511e;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
                padding: 20px;
                width: 200px;
                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
            }


            button span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }

            button span:after {
                content: '\00bb';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.6s;
            }

            button:hover span {
                padding-right: 25px;
            }

            button:hover span:after {
                opacity: 1;
                right: 0;
            }
        </style>
        --%>
    </head>
    <body>
        <div class="container" align="right">

            <a href="LoginPage.jsp" class="btn btn-info btn-lg"  style="position: absolute;right: 45%;top-right: 25%;">
                <span class="glyphicon glyphicon-log-in"></span> Log in
            </a>                          
        </div>
        
        
        <div class="container" align="right">

            <a href="CreateanAccount.jsp" class="btn btn-info btn-reg"  style="position: absolute;right: 35%;top-right: 30%;">
                <span class="glyphicon glyphicon-log-in"></span>Registration
            </a>                          
        </div>
    <center>
        <tr width="100%">
            <td colspan="170"></td>            
            <td><font size="50" style="font-family: Verdana"><a href="CreateanAccount.jsp" target="middle"  style="position: relative;right: 20%;bottom: 30%;"><button><span>Create an Account </span></button></a></font></td>
            </br>
            <td><font size="50" style="font-family: Verdana"><a href="LoginPage.jsp" target="middle"  style="position: relative;right: -15%;bottom: 40%;"><button><span>Login </span></button></a></font></td> <%-- // class="button" style="vertical-align:middle" --%>
            </br>       
            <td><font size="50" style="font-family: Verdana"><a href="About Us .jsp" target="middle"  style="position: relative;right: 20%;bottom: 60%;"><button>About Us</button></a></font></td>
            </br>
            <td><font size="50" style="font-family: Verdana"><a href="Contact Us.jsp" target="middle"  style="position: relative;right: -20%;top: 40%;"><button>Contact Us</button></a></font></td>
            </br>                
            <td><font size="50" style="font-family: Verdana"><a href="FAQ's.jsp" target="middle"  style="position: relative;right: 0%;top: 50%;"><button>FAQ's</button></a></font></td>
            </br>            
            <td><font size="50" style="font-family: Verdana"><a href="subpage.html" target="middle"><button><span>Add Books </span></button></a></font></td>
            </br>
            <td><font size="50" style="font-family: Verdana"><a href="index.html" target="middle"><button><span>Books </span></button></a></font></td>        
        </tr>
    </center>
</body>
</html>

