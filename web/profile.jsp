<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShopEase - Profile</title>
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>

<!-- Header -->
<header>
    <div class="logo">ShopEase</div>
    <nav>
        <a href="dashboard.jsp">Home</a>
        <a href="products.jsp">Products</a>
        <a href="cart.jsp">Cart</a>
        <a href="orders.jsp">Orders</a>
        <a href="profile.jsp" class="active">Profile</a>
        <a href="user-login.jsp" class="logout">Logout</a>
    </nav>
</header>

<!-- Breadcrumb -->
<div class="breadcrumb">
    <a href="dashboard.jsp">Home</a> / <span>Profile</span>
</div>

<!-- Main Section -->
<main>
    <h2 class="page-title">My Profile</h2>

    <div class="profile-container">
        <div class="profile-card">
            <h3>Personal Details</h3>
            <p><strong>Name:</strong> John Doe</p>
            <p><strong>Email:</strong> johndoe@example.com</p>
            <p><strong>Phone:</strong> +91 9876543210</p>
            <p><strong>Address:</strong> 123, MG Road, Bangalore, India</p>
            <a href="edit-profile.jsp" class="btn">Edit Profile</a>
        </div>

        <div class="profile-card">
            <h3>Account Settings</h3>
            <p><strong>Password:</strong> ********</p>
            <p><strong>Newsletter Subscription:</strong> Subscribed</p>
            <p><strong>Preferred Payment:</strong> Credit Card</p>
            <a href="change-password.jsp" class="btn">Change Password</a>
        </div>
    </div>
</main>

<!-- Footer -->
<footer>
    <p>2025 ShopEase. All rights reserved.</p>
</footer>

</body>
</html>
