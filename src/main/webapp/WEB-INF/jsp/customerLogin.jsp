<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet"> <!-- Importing Poppins font -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            overflow: hidden; /* Prevent scrolling */
        }

        /* Background image */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-image: url("/images/zara.png");
            background-size: cover;
            background-position: center;
            filter: blur(5px); /* Adjust the blur effect here */
            z-index: -1; /* Keep background behind the form */
        }

        .login-form {
            width: 300px; /* Reduced to standard form width */
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: white;
            position: relative; /* Allow z-index to work */
            z-index: 1; /* Bring form above the blurred background */
            
            /* Animated dark golden glow effect with reduced shadow width */
            animation: dark-golden-glow 3s infinite alternate;
        }

        /* Keyframes for the reduced dark golden glow animation */
        @keyframes dark-golden-glow {
            0% {
                box-shadow: 0 0 30px 10px rgba(184, 134, 11, 0.6),   /* Dark Golden Rod */
                            0 0 50px 20px rgba(218, 165, 32, 0.5),  /* Golden Rod */
                            0 0 70px 30px rgba(205, 127, 50, 0.4); /* Bronze */
            }
            100% {
                box-shadow: 0 0 50px 15px rgba(184, 134, 11, 0.8),   /* Dark Golden Rod */
                            0 0 70px 30px rgba(218, 165, 32, 0.7),  /* Golden Rod */
                            0 0 90px 40px rgba(139, 69, 19, 0.6);   /* Saddle Brown */
            }
        }

        .login-form h1 {
            text-align: center;
            font-size: 36px; /* Increased font size for brand name */
            font-family: 'Poppins', sans-serif; /* Apply Poppins font */
            color: #B8860B; /* Dark Golden Rod color for the text */
            margin-bottom: 10px; /* Space below the brand name */
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
        
        .login-form p {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
        
        .login-form a {
            color: #0066c0;
            text-decoration: none;
        }
        
        .login-form a:hover {
            text-decoration: underline;
        }
        
        .admin-login {
            text-align: center; /* Center align the admin login option */
            margin-top: 15px; /* Add some space above the admin login option */
        }
    </style>
</head>
<body>
    <div class="background"></div> <!-- Background image with blur -->
    <div class="login-form">
        <h1>Imperial Attire</h1> <!-- Brand name at the top center -->
        <h2>Sign In</h2>
        <form action="/login" method="post">
            <input type="text" name="username" placeholder="Email or mobile phone number" required />
            <input type="password" name="password" placeholder="Password" required />
            <input type="submit" value="Continue" />
        </form>
        <div class="error">${error}</div>
        <p><a href="/about">About Us</a></p>
        <hr>
        <p>New to our platform? <a href="/signup">Create your account</a></p>
        <div class="admin-login">
            <p>Admin? <a href="/admin/login">Log in here</a></p> <!-- Admin login link -->
        </div>
    </div>
</body>
</html>
