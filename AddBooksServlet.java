package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Books;
import java.sql.*;

@WebServlet(name="AddBooksServlet", urlPatterns={"/AddBooksServlet"})
public class AddBooksServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        String bname,aname,email,pwd,cpwd,ip; //retrive parameters
        
        
        int id=Integer.parseInt(request.getParameter("i")); //parsing the parameters
        bname=request.getParameter("b");
        aname=request.getParameter("a");
        email=request.getParameter("e");
        pwd=request.getParameter("p");
        cpwd=request.getParameter("cp");
        ip=request.getParameter("ip");
        
        Books b1 = new Books(id, bname, aname, email, pwd, cpwd, ip);
        
        HttpSession session = request.getSession();//create session
        
        List<Books> stdList = (List)session.getAttribute("stdList");// manyyy peoples for array list
        
        stdList.add(b1);
        
        session.setAttribute("stdList",stdList);
         
         try
         {
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Book","book","book");
             PreparedStatement ps=con.prepareStatement("insert into book values(?,?,?,?,?,?,?)");
             ps.setInt(1, id);
             ps.setString(2, bname);
             ps.setString(3, aname);
             ps.setString(4, email);
             ps.setString(5, pwd);
             ps.setString(6, cpwd);
             ps.setString(7, ip);
             ps.executeUpdate();
             
             response.sendRedirect("Display.jsp");
             
             
         }
         catch(Exception e)
         {
             e.printStackTrace();
         }
    }
    
}
    /*
        String bname,aname,email,pwd,cpwd; //retrive parameters
        int id;
        
        id=Integer.parseInt(request.getParameter("i")); //parsing the parameters
        bname=request.getParameter("b");
        aname=request.getParameter("a");
        email=request.getParameter("e");
        pwd=request.getParameter("p");
        cpwd=request.getParameter("cp");
                
        Books b1 = new Books(id, bname, aname, email, pwd, cpwd);//object
        
        HttpSession session = request.getSession();//create session
        
        List<Books> stdList = (List)session.getAttribute("stdList");// many peoples for array list
        
        
        
        session.setAttribute("stdList",stdList);
        
        response.sendRedirect("Display.jsp"); */
