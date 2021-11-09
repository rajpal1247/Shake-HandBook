<%-- 
    Document   : MainPage
    Created on : Dec 15, 2017, 7:33:31 AM
    Author     : raj
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .f3
            {
                float:middle;
                border:0px;
                overflow:scroll;
                background: -webkit-linear-gradient(top, #f34f4f 100%,#f34f4f 100%, #f34f4f 100%) /*#ff0000*/
            }
             .f1
            {
                float:left;
                border:0px;
                overflow:scroll;
                background: -webkit-linear-gradient(top, #ff9933 1000%, #ff9933 100%, #ff9933 100%)
            }
            
        </style>        
    </head>
    <body>        
        <iframe class="f3" name="top" align="top" src="HeadingFramePage.jsp" width="100%" height="150"></iframe>
        <iframe class="f1" name="left" align="left" src="HomePage.jsp" width="100%" height="500"></iframe>
    </body>
</html>
