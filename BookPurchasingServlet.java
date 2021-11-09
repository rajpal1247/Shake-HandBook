package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "BookPurchasingServlet", urlPatterns = {"/BookPurchasingServlet"})
public class BookPurchasingServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        HttpSession session=request.getSession();
        
        try
        {           
            String cab=request.getParameter("book");
            session.setAttribute("book","book");
            RequestDispatcher rd=request.getRequestDispatcher("DisplayServlet");
            rd.forward(request, response);
        }
        finally
        {
            out.close();
        }
    }
}
