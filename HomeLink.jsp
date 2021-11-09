<%-- 
    Document   : LinksPage
    Created on : Dec 23, 2017, 10:31:17 PM
    Author     : raj
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>JSP Page</title>
        <style>
            a:hover
            {
                background-color: royalblue;
                font-size: 30px;
                width: 20%;

            }
            .dropbtn {
                background-color: royalblue;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            .dropdown-content a:hover {background-color: #f1f1f1; width: 50px;}

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: royalblue;
            }

            button {
                display: inline-block;
                border-radius: 4px;
                background-color: green; /*#f4511e*/
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
                right: 5px;
                transition: 0.5s;
            }

            button:hover span {
                padding-right: 25px;
            }

            button:hover span:after {
                opacity: 1;
                right: 0;
            }

            .btn {
                background-color: royalblue;
                border: none;
                color: white;
                padding: 12px 16px;
                font-size: 16px;
                cursor: pointer;
            }

            /* Darker background on mouse-over */
            .btn:hover {
                background-color: RoyalBlue;
            }

            body
            {
                background-image: url('Images/vintage-book-background-web-template-33545452.jpg');
                background-size: auto;
            }
        </style>        
        </head>
        <body>
        <center>

            <div class="dropdown"  style="position: absolute;right: 45%;top: 0%;">
                <button class="dropbtn"  style="position: absolute;right: 45%;top: 30%;"><span><font style="font-family: Verdana"><i class="fa fa-home" style="position: absolute;right: 50%;top: 5%;">Home</i></font></span></button>
                <div class="dropdown-content" width="500%" height="50">    
                    <tr>
                        <td>
                            <font style="font-family: Verdana">
                                <a href="CreateanAccount.jsp"><button class="button" style="vertical-align:middle"><span>Create An Account </span></button></a>
                                <%--<a href="CreateanAccount_1.jsp"><button class="button" style="vertical-align:middle"><span>Create An Account </span></button></a>--%>
                                <a href="LoginPage.jsp"><button class="button" style="vertical-align:middle"><span>Login </span></button></a>
                                <a href="LogOut.jsp"><button class="button" style="vertical-align:middle"><span>Log Out </span></button></a>
                                <a href="About Us.jsp"><button class="button" style="vertical-align:middle"><span>About Us </span></button></a>
                                <a href="Contact Us.jsp"><button class="button" style="vertical-align:middle"><span>Contact Us </span></button></a>
                                <%--<a href="index_1.html"><button class="button" style="vertical-align:middle"><span>Books </span></button></a>--%>
                                <a href="index.html"><button class="button" style="vertical-align:middle"><span>Add Books </span></button></a>                                
                                <a href="voicesearch.html"><button class="button" style="vertical-align:middle"><span>Voice Search </span></button></a>                                
                                </font>
                            </td>
                        </tr>
                    </div>
                </div>
        </center>
    </body>
</html>
<%--

    .prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}
    ---------------------------------------------------------------------------
<tr>
            <td>
                <font size="300" style="font-family: Verdana">
                <a href="MainPage.jsp" target="middle"  style="position: absolute;right: 45%;top: 30%;">
                <button class="button" style="vertical-align:middle"><span>Home </span></button>
                </a>
                </font>
            </td>
        </tr>
   button {
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
                right: 5px;
                transition: 0.5s;
            }

            button:hover span {
                padding-right: 25px;
            }

            button:hover span:after {
                opacity: 1;
                right: 0;
            } --%>

<%-- <button class="btn">
                <i class="fa fa-home" style="position: absolute;right: 55%;top: 5%;"></i> Home
            </button>  --%>