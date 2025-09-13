<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Analog Watch - ShopEase</title>
    <link rel="stylesheet" href="css/analogwatch.css">
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
    <span>Analog Watch</span>
</div>

<div class="main-container">
    <div class="product-image">
        <img src="https://images.unsplash.com/photo-1522312346375-d1a52e2b99b3?auto=format&fit=crop&w=600&q=80" alt="Analog Watch">
    </div>

    <div class="product-info">
        <h1>Analog Watch</h1>
        <p class="price">₹4,299</p>
        <p class="description">
            Classic analog watch with stainless steel body and leather strap. Water-resistant and perfect for both casual and formal occasions.
        </p>

        <ul class="features">
            <li>Stainless Steel Case</li>
            <li>Leather Strap</li>
            <li>Water Resistant up to 50m</li>
            <li>Quartz Movement</li>
            <li>Classic Analog Display</li>
        </ul>

        <div class="rating">★★★★☆ (80 Reviews)</div>

        <form action="CartServlet" method="post">
            <input type="hidden" name="name" value="Analog Watch">
            <input type="hidden" name="price" value="4299">
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
