<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>                        
        <style>
            /* body
            {
                background-color: orange;
            }*/
            body
            {
                background-color: sandybrown;
            }
            /*input {
                width: 50%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
            }*/
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
            /*td {
                background-color: red;
                border-top-right-radius: 25px 15px; 
                border: 2px solid #73AD21;
                padding: 20px; 
                width: 20px;
                height: 15px; 
            }*/
            /*td {                
                 border-radius: 25px;
                background-color: orange;
                border: 2px solid red;
                background-position: left top;
                background-repeat: repeat;
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
        <h2 style="font-family: Verdana">Add Books</h2>
        <form action="AddBooksServlet" method="post">
            <table border="1">
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" placeholder="             Books Id" name="i" required="Please fill out Book Id"/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" placeholder="             Book Name" name="b"  required="Please fill out Book Name"/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" placeholder="              Author Name" name="a" required="Please fill out author Name"/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="text" placeholder="             Email Id" name="e" required="Please fill out Email Id"/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="password" placeholder="              Password" name="p" required="Please fill out Password"/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="password" placeholder="             Confirm Password" name="cp" required="Please fill out Confirm Password"/></td>
                </tr>
                <tr>                    
                    <td style="font-family: Verdana"><input type="file" placeholder="             ImagePath" name="ip" required=""/></td>
                </tr>
                <tr>
                    <td style="font-family: Verdana"><input type="submit" value="Add"/></td>
                    <td style="font-family: Verdana"><input type="reset" value="Reset"/></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
