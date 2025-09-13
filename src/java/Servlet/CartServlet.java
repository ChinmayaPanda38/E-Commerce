package Servlet;

import java.io.IOException;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class CartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Map<String,String>> cart = (List<Map<String,String>>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }

        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String quantityIn = request.getParameter("quantity");
        int quantity = 1;
        if (quantityIn != null && !quantityIn.isEmpty()) {
            try {
                quantity = Integer.parseInt(quantityIn);
            } catch (NumberFormatException e) {
                quantity = 1;
            }
        }

        String updateIndexStr = request.getParameter("updateIndex");
        if (updateIndexStr != null) {
            int idx = Integer.parseInt(updateIndexStr);
            Map<String,String> item = cart.get(idx);
            item.put("quantity", String.valueOf(quantity));
            session.setAttribute("cart", cart);
            response.sendRedirect("cart.jsp");
            return;
        }

        String removeIndexStr = request.getParameter("removeIndex");
        if (removeIndexStr != null) {
            int idx = Integer.parseInt(removeIndexStr);
            if (idx >= 0 && idx < cart.size()) {
                cart.remove(idx);
            }
            session.setAttribute("cart", cart);
            response.sendRedirect("cart.jsp");
            return;
        }

        if (name != null && price != null) {
            Map<String,String> product = new HashMap<>();
            product.put("name", name);
            product.put("price", price);
            product.put("quantity", String.valueOf(quantity));
            cart.add(product);
        }

        session.setAttribute("cart", cart);
        response.sendRedirect("cart.jsp");
    }
}
