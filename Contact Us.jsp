<%-- 
    Document   : ContactUs
    Created on : Dec 25, 2017, 8:07:45 PM
    Author     : raj
--%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="home.css"/>
        <link rel="stylesheet" href="register.css"/>
        <style>
            table
            {
                border:none;
                text-align:left;
            }
            textarea 
            {
                resize: none;
            }
            <%--body
            {
                background-color: orangered;
}--%>
        </style>
    </head>
    <body>
        <form action="Welcome.jsp" method="post">
            <div id="div1">
                <nav id="header">
                <a href="Home.jsp">Home</a>
                <a href="CreateanAccount.jsp">Register</a>
                <a href="LoginPage.jsp">Login</a>
                <a href="About Us.jsp">About Us</a>
                <a href="Contact Us.jsp">Contact Us</a>                
                <a href="Books.jsp">Add Books</a>
                <a href="index.html">Books</a>
                </nav>
            </div>
            <div id="div2">
                <center>
                    <table>
                        <tr>
                            <td>Name</td>
                            <td><input type="text" required="" maxlength="25"/></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="text" required="" maxlength="25"/></td>
                        </tr>
                        <tr>
                            <td>Query</td>
                            <td>
                                <textarea rows="5" cols="19" required="" maxlength="40"></textarea>                               
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Submit"/></td>
                            <td><input type="reset" value="Reset"/></td>
                        </tr>
                    </table>
                </center>
            </div>
        </form>
    </body>
</html>
