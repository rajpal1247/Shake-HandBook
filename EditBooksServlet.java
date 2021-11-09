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

@WebServlet(name="EditBooksServlet", urlPatterns={"/EditBooksServlet"})
public class EditBooksServlet extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {                                                                           
        int id = Integer.parseInt(request.getParameter("id"));
        
        HttpSession session = request.getSession();
        
        List<Books> stdList = (List)session.getAttribute("stdList");
        
        for(Books b:stdList)
        {
            if(b.getId()==id)
            {
                session.setAttribute("books",b);
                break;
            }
        }
        
        response.sendRedirect("EditBooks.jsp");
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
                
        
        String bname,aname,email,pwd,cpwd,ip;
        
        HttpSession session = request.getSession();
        
        int id=Integer.parseInt(request.getParameter("i"));
        bname=request.getParameter("b");
        aname=request.getParameter("a");
        email=request.getParameter("e");
        pwd=request.getParameter("p");
        cpwd=request.getParameter("cp");
        ip=request.getParameter("ip");
        
        List<Books> stdList = (List)session.getAttribute("stdList");
        
        for(Books b:stdList)
        {
            if(b.getId()==id)
            {
                b.setBname(bname);
                b.setAname(aname);
                b.setEmail(email);
                b.setPwd(pwd);
                b.setCpwd(cpwd);
                b.setIp(ip);
            }
        }
        
        response.sendRedirect("Display.jsp");
    
        
    }
}
