<%-- 
    Document   : Buy
    Created on : Dec 27, 2017, 8:20:18 PM
    Author     : raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>           
            body
            {
                background-color: orange;
            }
            h1
            {
                font-family: Verdana;
            }
            .topnav {
                overflow: hidden;
                background-color: blueviolet;
            }
            .topnav a {
                float: left;
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
                border-bottom: 3px solid transparent;
            }
            .topnav a:hover {
                border-bottom: 3px solid lightblue;
            }

            .topnav a.active {
                border-bottom: 3px solid lightblue;
            }
        </style>
    </head>
    <body>
    <frameset cols="10%,10%,10%">
        <frame src="BookPurchasing.html" frameborder="20">
            <select>
                <option>
                    
                </option>
            </select>
            <br>
            <frame src="Frame_b.html" border="10px"> 
                <br>
                <frame src="Frame_c.html" border="10px">
                    </frameset>
                    <%--<a href="DisplayAllBook">Display All Books</a>--%>
                    </body>
                    </html>
                    <%-- 
                     body{background-color: #ff6600;}
                               .vl {
                                   border-left: 6px solid green;
                                   height: 500px;
                                   position: absolute;
                                   left: 50%;
                                   margin-left: -3px;
                                   top: 0;
                               }
                               frame{border-width: thin;}
                               
                               button{
                                   display: inline-block;
                                   border-radius: 4px;
                                   background-color: #f4511e;
                                   border: none;
                                   color: #FFFFFF;
                                   text-align: center;
                                   font-size: 28px;
                                   padding: 20px;
                                   width: 30px;
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
                transition: 0.5s;
            }

            button:hover span {
                padding-right: 25px;
            }

            button:hover span:after {
                opacity: 1;
                right: 0;
            }
                    --%>