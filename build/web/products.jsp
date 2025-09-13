<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopEase - Products</title>
    <link rel="stylesheet" href="css/products.css">
</head>
<body>

<!-- Header -->
<header>
    <div class="logo">ShopEase</div>
    <nav>
        <a href="dashboard.jsp">Home</a>
        <a href="products.jsp" class="active">Products</a>
        <a href="cart.jsp">Cart</a>
        <a href="orders.jsp">Orders</a>
        <a href="profile.jsp">Profile</a>
        <a href="user-login.jsp" class="logout">Logout</a>
    </nav>
</header>

<!-- Breadcrumb -->
<div class="breadcrumb">
    <a href="dashboard.jsp">Home</a> / <span>Products</span>
</div>

<!-- Main Section -->
<main>
    <h2 class="page-title">Our Top Products</h2>

    <div class="product-grid">
        <!-- Smartphone -->
        <div class="product-card">
            <a href="smartphone.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=600&q=80" alt="Smartphone">
                <h3>Smartphone</h3>
                <p class="price">₹19,999</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Smartphone">
                <input type="hidden" name="price" value="19999">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

        <!-- Laptop -->
        <div class="product-card">
            <a href="laptop.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="Laptop">
                <h3>Laptop</h3>
                <p class="price">₹59,999</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Laptop">
                <input type="hidden" name="price" value="59999">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

        
        <div class="product-card">
            <a href="camera.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80" alt="Headphones">
                <h3>Camera</h3>
                <p class="price">₹2,499</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Headphones">
                <input type="hidden" name="price" value="2499">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

       
        <div class="product-card">
            <a href="clothes.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=600&q=80" alt="Sneakers">
                <h3>Clothes</h3>
                <p class="price">₹3,499</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Sneakers">
                <input type="hidden" name="price" value="3499">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

        <!-- Smart Watch -->
        <div class="product-card">
            <a href="analogwatch.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1522312346375-d1a52e2b99b3?auto=format&fit=crop&w=600&q=80" alt="Smart Watch">
                <h3>Analog Watch</h3>
                <p class="price">₹4,999</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Smart Watch">
                <input type="hidden" name="price" value="4999">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

       
        <div class="product-card">
            <a href="chair.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1503602642458-232111445657?auto=format&fit=crop&w=600&q=80" alt="Backpack">
                <h3>Chair</h3>
                <p class="price">₹1,299</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Backpack">
                <input type="hidden" name="price" value="1299">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>
    </div>
</main>

<!-- Footer -->
<footer>
    <p>2025 ShopEase. All rights reserved.</p>
</footer>

</body>
</html>
