package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Books;

@WebServlet(name = "DisplayAllBook", urlPatterns = {"/DisplayAllBook"})
public class DisplayAllBook extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/Book", "book", "book");
            PreparedStatement st = con.prepareStatement("select * from Book");

            ResultSet rs = st.executeQuery();
            List<Books> stdList = new ArrayList<>();

            while(rs.next()) {
                stdList.add(new Books(rs.getInt("id"), rs.getString("bname"), rs.getString("aname"), rs.getString("email"), rs.getString("pwd"), rs.getString("cpwd"), rs.getString("ip")));
            }
            HttpSession session = request.getSession();

            session.setAttribute("stdList", stdList);

            response.sendRedirect("DisplayBook.jsp");

        } catch (Exception e) {
            e.printStackTrace();
        }/*
        List<Books> stdList = new ArrayList<>();
        
        stdList.add(new Books(1,"Android" ,"Reto Meir" ,"raj@gmail.com" ,"123" ,"123" ));
        stdList.add(new Books(2,"Java" ,"J.Gosling" ,"harsh@gmail.com" ,"321" ,"321" ));
        stdList.add(new Books(3,"JavaScript" ,"Thomson" ,"veer@gmail.com" ,"213" ,"213" ));
        stdList.add(new Books(4,"HTML" ,"L&T" ,"devangi@gmail.com" ,"312" ,"312" ));
        stdList.add(new Books(5,"Oracle" ,"Fisher" ,"khushi@gmail.com" ,"231" ,"231" )); */
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
