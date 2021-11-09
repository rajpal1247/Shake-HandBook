package servlet;

import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.servlet.annotation.*;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        
        if(Validate.checkUser(email, pass))
        {
            RequestDispatcher rs = request.getRequestDispatcher("Sell.jsp");
            rs.forward(request, response);
        }
        else
        {
           out.println("");
           RequestDispatcher rs = request.getRequestDispatcher("Error.jsp");
           rs.include(request, response);
        }

    }
}
/*      
        
             String id, pass;
             id = request.getParameter("i");
        pass = request.getParameter("p");
        boolean status = readFile();
        if (status) {
            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
            rd.forward(request, response);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
            rd.forward(request, response);
        }
    }

    public boolean readFile() {
        boolean found = false;
        try (FileReader fr = new FileReader("E:\\raj\\a.txt");
                BufferedReader br = new BufferedReader(fr)) {
            String s = "";
            while ((s = br.readLine()) != null) {
                String[] data = s.split("-");
                if (data[2].equals(id) && data[3].equals(pass)) {
                    found = true;
                    break;
                }
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return found;
--------------------------------------------------------------------------------       
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
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
        ------------------------------------------------------------------------
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("i");
        String pwd = request.getParameter("p");
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Register", "register", "register");
            PreparedStatement ps = conn.prepareStatement("Select id,pwd from login where id=? and pwd=?");
            ps.setString(1, id);
            ps.setString(2, pwd);
        //    ResultSet rs = ps.executeQuery();
            Object i = null;
            Object p = null;
            if (id.equals(i) && pwd.equals(p)) {
            
           
             RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
            rd.forward(request, response);
        } else {
            out.print("");
            RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
            rd.include(request, response);
        }
        } 
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        ------------------------------------------------------------------------
        
 */
/*
      PrintWriter out = response.getWriter();

        String id = request.getParameter("i");
        String pass = request.getParameter("p");
        Object i = null;
        Object p = null;
        PreparedStatement ps = null;
        Connection conn;
        conn = null;
        ResultSet rs;
        rs = null;
        try {
            Class.forName("org.apache.derby.jdbc.ClientDriver"); 
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            conn = DriverManager.getConnection("jdbc:derby://localhost:1527/Register", "register", "register");
        } catch (SQLException ex) {
            Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (id.equals(i) && pass.equals(p)) {
            String query = "SELECT PRICE FROM register WHERE email=?";
            try {
                ResultSet executeQuery = ps.executeQuery();
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            RequestDispatcher rd = request.getRequestDispatcher("Success.jsp");
            rd.forward(request, response);
        } else {
            out.print("");
            RequestDispatcher rd = request.getRequestDispatcher("Error.jsp");
            rd.include(request, response);
        }
        out.close();
*/