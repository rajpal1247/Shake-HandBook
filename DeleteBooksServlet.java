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

@WebServlet(name="DeleteBooksServlet", urlPatterns={"/DeleteBooksServlet"})
public class DeleteBooksServlet extends HttpServlet 
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
                stdList.remove(b);
                break;
            }
        }
        
        session.setAttribute("stdList",stdList);
        
        response.sendRedirect("Display.jsp");
    }
}
