<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShopEase - My Cart</title>
    <link rel="stylesheet" href="css/cart.css">
</head>
<body>

<header>
    <div class="logo">ShopEase</div>
    <nav>
        <a href="dashboard.jsp">Home</a>
        <a href="products.jsp">Products</a>
        <a href="cart.jsp" class="active">Cart</a>
        <a href="orders.jsp">Orders</a>
        <a href="profile.jsp">Profile</a>
        <a href="user-login.jsp" class="logout">Logout</a>
    </nav>
</header>

<main>
    <h2 class="page-title">My Shopping Cart</h2>

<%
    List<Map<String,String>> cart = (List<Map<String,String>>) session.getAttribute("cart");
    if(cart == null || cart.isEmpty()) {
%>
    <p class="empty-cart">Your cart is empty.</p>
<%
    } else {
        int total = 0;
%>

    <table class="cart-table">
        <tr>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Subtotal</th>
            <th>Action</th>
        </tr>
<%
        for(int i = 0; i < cart.size(); i++) {
            Map<String,String> item = cart.get(i);
            String name = item.get("name");
            String priceStr = item.get("price").replace(",", ""); // remove commas
            int price = Integer.parseInt(priceStr); // safe now
            total += price;
%>
        <tr>
            <td><%= name %></td>
            <td>₹<%= price %></td>
            <td>
                <form action="CartServlet" method="post" class="qty-form">
                    <input type="hidden" name="updateIndex" value="<%= i %>">
                    <input type="number" name="quantity" value="1" min="1">
                    <button type="submit">Update</button>
                </form>
            </td>
            <td>₹<%= price %></td>
            <td>
                <form action="CartServlet" method="post" class="remove-form">
                    <input type="hidden" name="removeIndex" value="<%= i %>">
                    <button type="submit" class="remove-btn">Remove</button>
                </form>
            </td>
        </tr>
<% } %>
        <tr>
            <td colspan="3" style="text-align:right"><strong>Total</strong></td>
            <td colspan="2"><strong>₹<%= total %></strong></td>
        </tr>
    </table>

    <div class="checkout-btn-container">
        <a href="checkout.jsp" class="btn-checkout">Proceed to Checkout</a>
    </div>

<% } %>
</main>

</body>
</html>
