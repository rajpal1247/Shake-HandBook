<%-- 
    Document   : About Us
    Created on : Feb 18, 2018, 2:44:31 PM
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
            #div2 .videodiv
            {
                text-align:center;
            }
            video
            {
                width:20%;
                height:60%;
            }
            body
            {
                background-color: royalblue;
            }

            body {margin:0;}

            .icon-bar {
                width: 100%;
                background-color: #555;
                overflow: auto;
            }

            .icon-bar a {
                float: left;
                width: 20%;
                text-align: center;
                padding: 12px 0;
                transition: all 0.3s ease;
                color: white;
                font-size: 36px;
            }

            .icon-bar a:hover {
                background-color: #000;
            }

            .active {
                background-color: #4CAF50 !important;
            }
        </style>
    </head>
    <body>
        <div id="div2">
            <div class="videodiv">
                <video src="videos/bookboon.mp4" controls autoplay>
                    Your browser doesn't support video
                </video>
            </div>
        </div>
        <div class="icon-bar">
            <a class="active" href="#"><i class="fa fa-home"></i></a> 
            <a href="#"><i class="fa fa-search"></i></a> 
            <a href="#"><i class="fa fa-envelope"></i></a> 
            <a href="GT.jsp"><i class="fa fa-globe"></i></a>
            <a href="#"><i class="fa fa-trash"></i></a> 
        </div>

        <p style="font-family: verdana">
            This Website is about the purchasing of second hand book on online.To save your
            time for offline.easy to use this site.add your phone number you will get
            the message on you phone.select your any book you like that or you want them.
        </p>


    </body>
</html>
