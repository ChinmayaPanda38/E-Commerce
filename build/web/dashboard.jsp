<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShopEase - Dashboard</title>
    <link rel="stylesheet" href="css/dashboard.css">
</head>
<body>

    <!-- Header -->
    <header>
        <div class="logo">🛒 ShopEase</div>
        <nav>
            <a href="products.jsp">Products</a>
            <a href="cart.jsp">Cart</a>
            <a href="orders.jsp">My Orders</a>
            <a href="profile.jsp">Profile</a>
            <a href="user-login.jsp" class="logout">Logout</a>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Welcome to ShopEase 👋</h1>
        <p>Explore the best deals and start shopping today!</p>
        <a href="products.jsp" class="btn">Start Shopping</a>
    </section>

    <!-- Categories Section -->
    <section class="categories">
        <h2>Featured Categories</h2>
        <div class="category-grid">
            <div class="category-card">
                <img src="https://cdn.pixabay.com/photo/2016/11/29/04/00/electronics-1869009_1280.jpg" alt="Electronics">
                <h3>📱 Electronics</h3>
                <p>Latest gadgets and devices.</p>
                <a href="products.jsp" class="btn">Shop Now</a>
            </div>
            <div class="category-card">
                <img src="https://cdn.pixabay.com/photo/2017/08/06/01/08/fashion-2592871_1280.jpg" alt="Fashion">
                <h3>👗 Fashion</h3>
                <p>Trendy clothes & accessories.</p>
                <a href="products.jsp" class="btn">Shop Now</a>
            </div>
            <div class="category-card">
                <img src="https://cdn.pixabay.com/photo/2016/11/18/17/16/bedroom-1839150_1280.jpg" alt="Home">
                <h3>🏠 Home</h3>
                <p>Essentials for your living space.</p>
                <a href="products.jsp" class="btn">Shop Now</a>
            </div>
            <div class="category-card">
                <img src="https://cdn.pixabay.com/photo/2016/11/29/02/35/game-1869042_1280.jpg" alt="Gaming">
                <h3>🎮 Gaming</h3>
                <p>Consoles, games & accessories.</p>
                <a href="products.jsp" class="btn">Shop Now</a>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <p>© 2025 ShopEase. All rights reserved.</p>
    </footer>

</body>
</html>
