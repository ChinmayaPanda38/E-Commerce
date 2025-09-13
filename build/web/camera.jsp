<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "Camera";
    String price = "2499";
    String image = "https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=800&q=80";
    String description = "Capture stunning photos with this DSLR Camera featuring 24MP, 18-55mm lens, full manual control, and excellent low-light performance.";
    String[] features = {
        "24MP Sensor",
        "18-55mm Lens",
        "Full Manual Control",
        "1080p Video Recording",
        "High ISO Performance",
        "Lightweight Body"
    };
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= name %> - ShopEase</title>
    <link rel="stylesheet" href="css/camera.css">
</head>
<body>

<header>
    <div class="logo">ShopEase</div>
    <nav>
        <a href="dashboard.jsp">Home</a>
        <a href="products.jsp">Products</a>
        <a href="cart.jsp">Cart</a>
        <a href="orders.jsp">Orders</a>
        <a href="profile.jsp">Profile</a>
        <a href="user-login.jsp" class="logout">Logout</a>
    </nav>
</header>

<div class="breadcrumb">
    <a href="dashboard.jsp">Home</a> / 
    <a href="products.jsp">Products</a> / 
    <span><%= name %></span>
</div>

<div class="main-container">
    <div class="product-image">
        <img src="<%= image %>" alt="<%= name %>">
    </div>

    <div class="product-info">
        <h1><%= name %></h1>
        <p class="price">₹<%= price %></p>
        <p class="description"><%= description %></p>

        <ul class="features">
            <% for(String feat : features) { %>
                <li>✔ <%= feat %></li>
            <% } %>
        </ul>

        <div class="rating">★★★★☆ (85 Reviews)</div>

        <form action="CartServlet" method="post">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="price" value="<%= price %>">
            <button type="submit" class="btn-add-cart">Add to Cart</button>
        </form>

        <a href="products.jsp" class="back-link">← Back to Products</a>
    </div>
</div>

<footer>
    <p>2025 ShopEase. All rights reserved.</p>
</footer>

</body>
</html>
