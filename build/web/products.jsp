<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopEase - Products</title>
    <link rel="stylesheet" href="css/products.css">
    <script>
      
        function filterProducts() {
            const searchInput = document.getElementById("searchInput").value.toLowerCase();
            const priceFilter = document.getElementById("priceFilter").value;
            const products = document.querySelectorAll(".product-card");

            products.forEach(product => {
                const name = product.querySelector("h3").innerText.toLowerCase();
                const price = parseInt(product.querySelector(".price").innerText.replace(/[^0-9]/g, ""));

                
                const matchesSearch = name.includes(searchInput);

               
                let matchesPrice = true;
                if (priceFilter === "low") matchesPrice = price < 5000;
                else if (priceFilter === "medium") matchesPrice = price >= 5000 && price < 20000;
                else if (priceFilter === "high") matchesPrice = price >= 20000;

                
                product.style.display = (matchesSearch && matchesPrice) ? "block" : "none";
            });
        }
    </script>
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


<div class="filter-bar">
    <input type="text" id="searchInput" placeholder="Search products..." onkeyup="filterProducts()">
    <select id="priceFilter" onchange="filterProducts()">
        <option value="">Filter by Price</option>
        <option value="low">Below ₹5,000</option>
        <option value="medium">₹5,000 - ₹20,000</option>
        <option value="high">Above ₹20,000</option>
    </select>
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

        <!-- Camera -->
        <div class="product-card">
            <a href="camera.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80" alt="Camera">
                <h3>Camera</h3>
                <p class="price">₹2,499</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Camera">
                <input type="hidden" name="price" value="2499">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

        <!-- Clothes -->
        <div class="product-card">
            <a href="clothes.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1512436991641-6745cdb1723f?auto=format&fit=crop&w=600&q=80" alt="Clothes">
                <h3>Clothes</h3>
                <p class="price">₹3,499</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Clothes">
                <input type="hidden" name="price" value="3499">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

        <!-- Analog Watch -->
        <div class="product-card">
            <a href="analogwatch.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1522312346375-d1a52e2b99b3?auto=format&fit=crop&w=600&q=80" alt="Analog Watch">
                <h3>Analog Watch</h3>
                <p class="price">₹4,999</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Analog Watch">
                <input type="hidden" name="price" value="4999">
                <button type="submit" class="btn">Add to Cart</button>
            </form>
        </div>

        <!-- Chair -->
        <div class="product-card">
            <a href="chair.jsp" class="product-link">
                <img src="https://images.unsplash.com/photo-1503602642458-232111445657?auto=format&fit=crop&w=600&q=80" alt="Chair">
                <h3>Chair</h3>
                <p class="price">₹1,299</p>
            </a>
            <form action="CartServlet" method="post">
                <input type="hidden" name="name" value="Chair">
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
