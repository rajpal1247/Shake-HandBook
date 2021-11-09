package servlet;

import java.sql.*;
import java.util.List;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "BookStore", urlPatterns = {"/BookStore"})
public class BookStore extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        List booklist = new ArrayList();
        Connection con = null;

        String url = "jdbc:mysql://localhost:3306/";
        String db = "BOOKS";
        String driver = "com.mysql.jdbc.Driver";
        String user = "root";
        String pass = "";

        String isbncode = "";
        String bookcategory = "";
        isbncode = request.getParameter("isbncode");
        bookcategory = request.getParameter("bookcategories");
        String sqlqueary = "SELECT * FROM book WHERE book_name LIKE '%%' ";
        if (isbncode != null && !(isbncode.equals(""))) {
            sqlqueary += " and isbn_code='" + isbncode + "'";
        }
        if (bookcategory != null && !(bookcategory.equals("-1"))) {
            sqlqueary += " and category='" + bookcategory + "'";
        }

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url + db, user, pass);
            try {
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sqlqueary);
                while (rs.next()) {
                    List book = new ArrayList();
                    book.add(rs.getInt(1));
                    book.add(rs.getInt(2));
                    book.add(rs.getString(3));
                    book.add(rs.getString(4));
                    booklist.add(book);
                }
            } catch (SQLException s) {
                System.out.println("SQL statement is not executed!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("booklist", booklist);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/BookPurchasing.html");
        dispatcher.forward(request, response);

    }

}
