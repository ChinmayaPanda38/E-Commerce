<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="form-box">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <div class="input-field">
                <label>Email</label>
                <input type="email" name="email" required>
            </div>
            <div class="input-field">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
    </div>

    <script>
        const urlParams = new URLSearchParams(window.location.search);
        const error = urlParams.get('error');
        if(error) {
            alert(error); // Pop up error message
        }
    </script>
</body>
</html>
