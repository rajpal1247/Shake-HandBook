<%-- 
    Document   : Home
    Created on : Jun 25, 2021, 1:04:15 AM
    Author     : raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="home.css"/>
        <link rel="stylesheet" href="imgslider.css"/>
    </head>
    <body>
        <div id="div1">
            <nav id="header">
                <a href="Home.jsp">Home</a>
                <a href="CreateanAccount.jsp">Register</a>
                <a href="LoginForm.html">Login</a>
                <%--<a href="LoginPage.jsp">Login</a>--%>
                <a href="About Us.jsp">About Us</a>
                <a href="Contact Us.jsp">Contact Us</a>               
                <a href="index.html">Books</a>
            </nav>
        </div>
        <div id="div2">
            <div id="sliderdiv">
                <img src="Images/mahabharata.jpg" class="mySlider" />
                <img src="Images/harrypotter.png" class="mySlider" />
                <img src="Images/lionking.jpg" class="mySlider" />
                <img src="Images/mogli.jpg" class="mySlider" />
                <img src="Images/programmingbooks.png" class="mySlider" />
            </div>
        </div>
    </body>
</html>
