<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Map, java.util.HashMap" %>

<%
    Map<String, Object> product = (Map<String, Object>) request.getAttribute("product");

    if (product == null) {
        product = new java.util.HashMap<>();
        product.put("name", "Trendy Jacket");
        product.put("price", "3499");
        product.put("image", "https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=800&q=80");
        product.put("description", "Stay stylish and warm with this trendy jacket. Made with high-quality materials and perfect for casual outings or winter wear.");
        product.put("features", new String[] {
            "100% Cotton",
            "Zipper Closure",
            "Two Side Pockets",
            "Available in Multiple Colors",
            "Unisex Design"
        });
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= product.get("name") %> - ShopEase</title>
    <link rel="stylesheet" href="css/clothes.css">
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
    <span><%= product.get("name") %></span>
</div>

<div class="main-container">
    <div class="product-image">
        <img src="<%= product.get("image") %>" alt="<%= product.get("name") %>">
    </div>

    <div class="product-info">
        <h1><%= product.get("name") %></h1>
        <p class="price">₹<%= product.get("price") %></p>
        <p class="description"><%= product.get("description") %></p>

        <ul class="features">
            <% for(String feat : (String[])product.get("features")) { %>
                <li>✔ <%= feat %></li>
            <% } %>
        </ul>

        <div class="rating">
            ★★★★☆ (75 Reviews)
        </div>

        <form action="CartServlet" method="post">
            <input type="hidden" name="name" value="<%= product.get("name") %>">
            <input type="hidden" name="price" value="<%= product.get("price") %>">
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
