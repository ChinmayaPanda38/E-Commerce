<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/admin-dashboard.css">
</head>
<body>
    <!-- Sidebar -->
    <aside class="sidebar">
        <h2 class="logo">Admin</h2>
        <ul class="nav-links">
            <li><a href="#">Dashboard</a></li>
            <li><a href="#">Products</a></li>
            <li><a href="#">Categories</a></li>
            <li><a href="#">Orders</a></li>
            <li><a href="#">Users</a></li>
            <li><a href="admin-login.jsp">Logout</a></li>
        </ul>
    </aside>

    <!-- Main Content -->
    <div class="main-content">
        <!-- Top Bar -->
        <header>
            <h1>Welcome, Admin</h1>
        </header>

        <!-- Cards -->
        <section class="cards">
            <div class="card">
                <h3>Total Products</h3>
                <p>120</p>
            </div>
            <div class="card">
                <h3>Orders</h3>
                <p>85</p>
            </div>
            <div class="card">
                <h3>Users</h3>
                <p>40</p>
            </div>
            <div class="card">
                <h3>Revenue</h3>
                <p>$12,300</p>
            </div>
        </section>

        <!-- Table -->
        <section class="table-section">
            <h2>Recent Orders</h2>
            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Status</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>#101</td>
                        <td>John Doe</td>
                        <td><span class="status delivered">Delivered</span></td>
                        <td>$150</td>
                    </tr>
                    <tr>
                        <td>#102</td>
                        <td>Jane Smith</td>
                        <td><span class="status pending">Pending</span></td>
                        <td>$220</td>
                    </tr>
                    <tr>
                        <td>#103</td>
                        <td>Michael Lee</td>
                        <td><span class="status cancelled">Cancelled</span></td>
                        <td>$90</td>
                    </tr>
                </tbody>
            </table>
        </section>
    </div>
</body>
</html>
