<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            body
            {
                background-color: sandybrown;
            }
            table td{padding:-15px;}
            table  {
                width:10%;height: 20%;
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 20px; 
                width: 20px;
                height: 20px; 
            }         
            table
            {
                background-color: red;
            }
            /*td {
                background-color: red;
                border-top-right-radius: 25px 15px; 
                border: 2px solid #73AD21;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }*/
            button
            {
                display: inline-block;
                border-radius: 4px;
                background-color: #f4511e;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
            }
            td {                
                border-radius: 25px;
                background-color: orange;
                border: 5px solid orange;
                background-position: left top;
                background-repeat: repeat;
                padding: 2px; 
                width: 5px;
                height: 5px; 
            }
            h2{
                background-color: gold;
                border-radius: 25px;
                border: 2px solid red;
                padding: 20px; 
                width: 150px;
                height: 35px;
            }
        </style>
    </head>
    <body>
    <center>
        <h2 style="font-family: Verdana">Books Details</h2>
        <h3 style="font-family: Verdana"><a href="AddBooks.jsp"><button>Add Books</button></a></h3>
        <table border="1">
            <tr>
                <th style="font-family: Verdana">Books Id</th>
                <th style="font-family: Verdana">Book Name</th>
                <th style="font-family: Verdana">Author Name</th>
                <th style="font-family: Verdana">Email Id</th>
                <th style="font-family: Verdana">Password</th>
                <th style="font-family: Verdana">Confirm Password</th>                
                <th style="font-family: Verdana">Image</th>                
                <th style="font-family: Verdana">Operation</th>
            </tr>
            <c:forEach var="books" items="${sessionScope.stdList}">
                <tr>
                    <td style="font-family: Verdana">${books.id}</td>
                    <td style="font-family: Verdana">${books.bname}</td>
                    <td style="font-family: Verdana">${books.aname}</td>
                    <td style="font-family: Verdana">${books.email}</td>
                    <td style="font-family: Verdana">${books.pwd}</td>
                    <td style="font-family: Verdana">${books.cpwd}</td>
                    <td style="font-family: Verdana">${books.ip}</td>
                    <td style="font-family: Verdana"><a href="EditBooksServlet?id=${books.id}"><button>EDIT</button></a>|<a href="DeleteBooksServlet?id=${books.id}"><button>DELETE</button></a></td>
                </tr>
            </c:forEach>
        </table>
    </center>
</body>
</html>
<%-- body
            {
                background-color: orange;
            }
            body
            {
                background-color: sandybrown;
            }
            table td{padding:10px;}
            table  {               
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 20px;                 
            }            
            table
            {
                background-color: orange;
            }
            /*td {
                background-color: red;
                border-top-right-radius: 25px 15px; 
                border: 2px solid #73AD21;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }*/
            button
            {
                display: inline-block;
                border-radius: 4px;
                background-color: #f4511e;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
            }
            /*td {                
                border-radius: 25px;
                background-color: orange;
                border: 5px solid orange;
                background-position: left top;
                background-repeat: repeat;
                padding: 2px; 
                width: 20px;
                height: 15px; 
            } */           
            h2{
                background-color: gold;
                border-radius: 25px;
                border: 2px solid red;
                padding: 20px; 
                width: 150px;
                height: 35px;
            }  --%>