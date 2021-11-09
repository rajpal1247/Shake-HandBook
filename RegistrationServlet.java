package servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

@WebServlet(name = "RegistrationServlet", urlPatterns = {"/RegistrationServlet"})
public class RegistrationServlet extends HttpServlet {
    
   /* protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession hs=request.getSession();
            if(hs!=null)
            {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet retrievesession</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<center>");
            out.println("<h1>Hi " + hs.getAttribute("fname")+"</h1>");
            out.println("</body>");
            out.println("</center>");
            out.println("</html>");
        }
        } 
        finally {            
            out.close();
        }
    }*/
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String fn = request.getParameter("f");
        String ln = request.getParameter("l");
        String email = request.getParameter("e");
        String pwd = request.getParameter("p");
        String cpwd = request.getParameter("cp");

        // validate given input
        if (fn.isEmpty() || ln.isEmpty() || email.isEmpty() || pwd.isEmpty() || cpwd.isEmpty()) {
            RequestDispatcher rd = request.getRequestDispatcher("");
            out.println("<font color=red>Please fill all the fields</font>");
            rd.include(request, response);
        } else {
            // inserting data into mysql database 
            // create a test database and student table before running this to create table
            //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
            try {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                // loads mysql driver

                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Book", "book", "book");

                String query = "insert into register values(?,?,?,?,?)";

                PreparedStatement ps = con.prepareStatement(query); // generates sql query

                ps.setString(1, fn);
                ps.setString(2, ln);
                ps.setString(3, email);
                ps.setString(4, pwd);
                ps.setString(5, cpwd);

                ps.executeUpdate(); // execute it on test database
                System.out.println("successfuly inserted");
                ps.close();
                con.close();
            } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            //   response.sendRedirect("LoginPage.jsp"); 
            RequestDispatcher rd = request.getRequestDispatcher("Welcome.jsp");
            rd.forward(request, response);
        }
    }
}
/*
        String fn,ln,eid,pwd,cpwd;
        fn=request.getParameter("f");
        ln=request.getParameter("l");
        eid=request.getParameter("e");
        pwd=request.getParameter("p");
        cpwd=request.getParameter("cp");
        
        RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
        rd.forward(request, response);
        
        try(FileWriter fw = new FileWriter("E:\\raj\\a.txt",true);
                BufferedWriter bw = new BufferedWriter(fw))
        {
            bw.write(fn+"-"+ln+"-"+eid+"-"+pwd+"-"+cpwd);
            bw.newLine();
        }
        catch(IOException ex)
        {
            ex.printStackTrace();
        }
        response.sendRedirect("LoginPage.jsp");
*/
/*         
           
 */