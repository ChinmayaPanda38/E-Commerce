<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Register</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="form-box">
        <h2>Register</h2>
        <form action="Registerservlet" method="post">
            <!-- Name -->
            <div class="input-field">
                <label>Full Name</label>
                <input type="text" name="name" required>
            </div>

            <!-- Email -->
            <div class="input-field">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>

            <!-- Password -->
            <div class="input-field">
                <label>Password</label>
                <input type="password" name="password" maxlength="30" required>
            </div>

            <!-- Phone -->
            <div class="input-field">
                <label>Phone</label>
                <input type="text" name="phone" maxlength="10" required>
            </div>

            <button type="submit">Register</button>

            <p>Already have an account? <a href="user-login.jsp">Login</a></p>
        </form>
    </div>
</body>
</html>
