<%@page import="java.io.PrintWriter"%>
<!DOCTYPE html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{ background-color: #ff9933;}
            h1{position: absolute;right: 45%;top: 35%;font-family: verdana;color: royalblue;}
        </style>
    </head>
    <body>
    <center>
        <%--<h1>Welcome User!!!</h1>--%>
        <form action="WelcomeServlet" method="post">   
            <%                
                String fname = request.getParameter("f");
                String lname = request.getParameter("l");
                out.print("Welcome " + fname + " " + lname);
                out.close();
            %>
        </form>
    </center>
</body>
</html>
