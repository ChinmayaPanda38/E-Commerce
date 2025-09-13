package Servlet;

import DB.DBConnection;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT * FROM users WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("dashboard.jsp"); // Successful login
            } else {
                response.sendRedirect("user-login.jsp?error=Invalid+credentials"); // Pass error
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("user-login.jsp?error=Something+went+wrong");
        }
    }
}
