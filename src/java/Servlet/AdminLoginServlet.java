package Servlet;

import DB.DBConnection;
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class AdminLoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection con = DBConnection.getConnection()) {
            String sql = "SELECT * FROM admin_users WHERE email=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("admin-dashboard.jsp"); // Login successful
            } else {
                response.sendRedirect("admin-login.jsp?error=Invalid credentials"); // Invalid login
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin-login.jsp?error=Something went wrong");
        }
    }
}
