<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Signup</title>
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
            background-image: url("/images/p1.jpg");
            background-size: cover; /* Ensure the background covers the full area */
            background-position: center; /* Center the background image */
            background-repeat: no-repeat; /* Prevent background image repetition */
            overflow: hidden; /* Prevent scrolling */
        }

        /* Background blur */
        .background {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            backdrop-filter: blur(5px); /* Background blur effect */
            z-index: -1; /* Keep background behind the form */
        }

        .signup-form {
            width: 350px;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: white;
            box-shadow: 0 0 20px 5px rgba(184, 134, 11, 0.7); /* Dark golden shadow */
            display: flex;
            flex-direction: column; /* Arrange items in a column */
            align-items: center; /* Center align items horizontally */
            position: relative; /* Allow z-index to work */
            z-index: 1; /* Bring form above the blurred background */
        }

        .signup-form h2 {
            text-align: center;
            font-size: 30px; /* Increased font size for header */
            color: rgba(184, 134, 11, 0.7); /* Change to shadow color */
            margin-bottom: 20px; /* More space below the header */
            text-shadow: 2px 2px 5px rgba(184, 134, 11, 0.7); /* Add shadow effect to the text */
        }

        .signup-form input {
            width: 100%; /* Ensure inputs take full width */
            padding: 12px; /* Increased padding for inputs */
            margin: 10px 0; /* Space between inputs */
            border: 1px solid #ccc; /* Added border for input fields */
            border-radius: 4px; /* Slightly rounded corners */
            font-size: 14px; /* Consistent font size for inputs */
            box-sizing: border-box; /* Include padding in width calculation */
        }

        .signup-form input[type="submit"] {
            background-color: #f0c14b; /* Matching background color for submit button */
            border-color: #a88734 #9c7e31 #846a29; /* Border color for submit button */
            color: #111;
            font-weight: bold;
            cursor: pointer; /* Pointer cursor for submit button */
            transition: background-color 0.3s; /* Smooth transition effect */
        }

        .signup-form input[type="submit"]:hover {
            background-color: #2159d1; /* Darker shade on hover */
        }

        p {
            margin-top: 15px;
            font-size: 14px; /* Adjusted font size for better readability */
            text-align: center; /* Center align the paragraph */
        }

        a {
            color: #007bff; /* Link color */
            text-decoration: none; /* Remove underline */
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
    <div class="background"></div> <!-- Background blur effect -->
    <div class="signup-form">
        <h2>Sign Up</h2>
        <form action="/signup" method="post">
            <input type="text" name="name" placeholder="Name" required />
            <input type="text" name="username" placeholder="Username" required />
            <input type="email" name="email" placeholder="Email" required />
            <input type="password" name="password" placeholder="Password" required />
            <input type="submit" value="Sign Up" />
        </form>
        <p>Already have an account? <a href="/login">Login</a></p>
    </div>
</body>
</html>
