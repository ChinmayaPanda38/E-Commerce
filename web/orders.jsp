<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShopEase - Orders</title>
    <link rel="stylesheet" href="css/orders.css">
</head>
<body>

<!-- Header -->
<header>
    <div class="logo">ShopEase</div>
    <nav>
        <a href="dashboard.jsp">Home</a>
        <a href="products.jsp">Products</a>
        <a href="cart.jsp">Cart</a>
        <a href="orders.jsp" class="active">Orders</a>
        <a href="profile.jsp">Profile</a>
        <a href="user-login.jsp" class="logout">Logout</a>
    </nav>
</header>

<!-- Main Section -->
<main>
    <h2 class="page-title">My Orders</h2>

    <%
        List<Map<String, String>> orders = new ArrayList<>();
        
        Map<String, String> order1 = new HashMap<>();
        order1.put("id", "ORD12345");
        order1.put("date", "2025-09-10");
        order1.put("status", "Delivered");
        order1.put("total", "₹21,499");
        orders.add(order1);

        Map<String, String> order2 = new HashMap<>();
        order2.put("id", "ORD12346");
        order2.put("date", "2025-09-12");
        order2.put("status", "Processing");
        order2.put("total", "₹64,999");
        orders.add(order2);

        if (orders.isEmpty()) {
    %>
        <p class="no-orders">You have no orders yet.</p>
    <%
        } else {
    %>
        <div class="orders-container">
            <%
                for (Map<String, String> ord : orders) {
            %>
            <div class="order-card">
                <h3>Order ID: <%= ord.get("id") %></h3>
                <p><strong>Date:</strong> <%= ord.get("date") %></p>
                <p><strong>Status:</strong> <span class="<%= ord.get("status").equals("Delivered") ? "delivered" : "processing" %>"><%= ord.get("status") %></span></p>
                <p><strong>Total:</strong> <%= ord.get("total") %></p>
                <a href="#" class="btn">View Details</a>
            </div>
            <%
                }
            %>
        </div>
    <%
        }
    %>
</main>

<!-- Footer -->
<footer>
    <p>2025 ShopEase. All rights reserved.</p>
</footer>

</body>
</html>
