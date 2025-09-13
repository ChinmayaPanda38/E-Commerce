<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "Comfort Chair";
    int price = 2999; // store price as integer
    String description = "A comfortable and stylish chair suitable for your home or office. Ergonomic design ensures proper posture and long-lasting comfort.";
    String image = "https://images.unsplash.com/photo-1503602642458-232111445657?auto=format&fit=crop&w=600&q=80";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= name %> - ShopEase</title>
    <link rel="stylesheet" href="css/chair.css">
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

        <form action="CartServlet" method="post">
            <input type="hidden" name="name" value="<%= name %>">
            <input type="hidden" name="price" value="<%= price %>">
            <button type="submit" class="btn-add-cart">Add to Cart</button>
        </form>

        <a href="products.jsp" class="back-link">← Back to Products</a>
    </div>
</div>

<footer>
    <p style="background-color:black; color:white; text-align:center; padding:15px;">2025 ShopEase. All rights reserved.</p>
</footer>
</body>
</html>
