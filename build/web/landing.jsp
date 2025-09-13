<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShopEase - Landing Page</title>
    <link rel="stylesheet" href="css/landing.css">
</head>
<body>

<!-- Header -->
<header>
    <div class="container header-container">
        <h1 class="logo">ShopEase</h1>
        <nav>
            <a href="user-register.jsp">Register</a>
            <a href="user-login.jsp">Login</a>
            <a href="admin-login.jsp" class="logout">Admin Login</a>
        </nav>
    </div>
</header>

<!-- Hero Section -->
<section class="hero">
    <div class="container hero-content">
        <h2>Welcome to ShopEase</h2>
        <p>Discover amazing products at unbeatable prices!</p>
        <a href="user-register.jsp" class="btn btn-hero">Get Started</a>
    </div>
</section>
<!-- Products Section -->
<section class="products">
    <div class="container">
        <h2>Featured Products</h2>
        <div class="product-grid">
            <div class="product-card">
                <a href="user-login.jsp">
                    <h3>Stylish Watch</h3>
                    <p>$99.99</p>
                </a>
            </div>
            <div class="product-card">
                <a href="user-login.jsp">
                    <h3>Modern Headphones</h3>
                    <p>$149.99</p>
                </a>
            </div>
            <div class="product-card">
                <a href="user-login.jsp">
                    <h3>Leather Bag</h3>
                    <p>$79.99</p>
                </a>
            </div>
            <div class="product-card">
                <a href="user-login.jsp">
                    <h3>Sneakers</h3>
                    <p>$129.99</p>
                </a>
            </div>
        </div>
    </div>
</section>

</html>
<!-- Footer -->
<footer>
    <div class="container">
        <p>2025 ShopEase. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
