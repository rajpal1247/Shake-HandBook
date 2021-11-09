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
            /*table td{padding:10px;}*/
            table  {
                width:40%;height: 60%;                
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 20px; 
                width: 40px;
                height: 55px; 
            }
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
                background-color: red;
                border-top-right-radius: 25px 15px; 
                border: 2px solid #73AD21;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }
            td {                
                border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }*/
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
        <h2 style="font-family: Verdana">Edit Books</h2>
        <form action="EditBooksServlet" method="post">
            <table border="1">
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" name="i" placeholder="             Books Id" value="${books.id}" required=""/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" name="b" placeholder="             Book Name" value="${books.bname}" required=""/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" name="a" placeholder="             Author Name" value="${books.aname}" required=""/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" name="e" placeholder="             Email Id" value="${books.email}" required=""/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="password" name="p" placeholder="             Password" value="${books.pwd}" required=""/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="password" name="cp" placeholder="             Confirm Password" value="${books.cpwd}" required=""/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="file" name="ip" placeholder="             ImagePath" value="${books.ip}" required=""/></td>
                </tr>
                <tr>
                    <td style="font-family: Verdana"><input type="submit" value="Edit"/></td>
                    <td style="font-family: Verdana"><input type="reset" value="Reset"/></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>