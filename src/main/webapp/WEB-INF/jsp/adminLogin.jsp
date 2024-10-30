<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
             background-image: url("https://images.pexels.com/photos/5490975/pexels-photo-5490975.jpeg?auto=compress&cs=tinysrgb&w=1200");
        }
        .login-form {
            width: 350px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: white;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }
        .login-form h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .login-form input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .login-form input[type="submit"] {
            background-color: #f0c14b;
            border-color: #a88734 #9c7e31 #846a29;
            color: #111;
            font-weight: bold;
        }
        .login-form input[type="submit"]:hover {
            background-color: #2159d1;
        }
        .login-form .error {
            color: red;
            text-align: center;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="login-form">
        <h2>Admin Login</h2>
        <form action="/admin/adminLogin" method="post">
            <input type="text" id="username" name="username" placeholder="Username" required>
            <input type="password" id="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login">
            <c:if test="${not empty error}">
                <div class="error">${error}</div>
            </c:if>
        </form>
        <div class="back-link">
            <a href="/login">Back to Customer Login</a>
        </div>
    </div>
</body>
</html>
