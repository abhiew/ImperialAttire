<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home</title>
   
    <style>
        /* General Page Styling */
        body {
            display: flex; /* Use flexbox for layout */
            flex-direction: column; /* Stack child elements vertically */
            font-family: Arial, sans-serif;
            background-image:url("https://images.pexels.com/photos/1884581/pexels-photo-1884581.jpeg?auto=compress&cs=tinysrgb&w=1200")
            margin: 0;
            height: 100%;
        }

        /* Main Content Styling */
        main {
            flex: 1; /* Allow the main content to grow and fill available space */
            padding: 20px;
            text-align: center;
        }

        html, body {
            height: 100%; /* Ensure the body takes the full height */
            margin: 0; /* Remove default margin */
        }

        /* Glowing header text styling */
        header {
            background-color: #C6E7FF;
            padding: 15px 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            color: #000; 
            background-color: #C6E7FF;
            
        }

        /* Glowing animation for the header text */
        @keyframes glow {
            0% {
                text-shadow: 0 0 5px #ffd700, 0 0 10px #ffd700, 0 0 15px #ffd700, 0 0 20px #ffd700;
            }
            100% {
                text-shadow: 0 0 10px #ffea00, 0 0 20px #ffd700, 0 0 30px #ffd700, 0 0 40px #ffd700;
            }
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: flex-end;
        }

        nav ul li {
            margin-left: 20px;
        }

        /* Styling for text-like buttons */
        nav ul li a, nav ul li .text-button {
            color: #fff;
            text-decoration: none;
            cursor: pointer;
            background: none;
            border: none;
            padding: 0;
            font: inherit;
        }

        nav ul li a:hover, nav ul li .text-button:hover {
            text-decoration: underline;
        }

        h2 {
            color: rgb(255, 255, 0);
        }

        /* Product List Styling */
        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .product-item {
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 250px; /* Fixed width for consistency */
            text-align: center;
            padding: 16px;
            background-color: #D4F6FF;
            transition: transform 0.2s, box-shadow 0.4s;
            position: relative; /* For positioning the shadow */
            overflow: hidden; /* Hide any overflowed content */
        }

        /* Enhanced glow effect on hover with dark golden color */
        .product-item:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px 5px rgba(255, 215, 0, 0.8), /* Inner glow - dark gold */
                        0 0 40px 15px rgba(255, 215, 0, 0.5), /* Medium glow - dark gold */
                        0 0 60px 30px rgba(255, 215, 0, 0.3); /* Outer glow - dark gold */
        }

        .product-item img {
            width: 100%; /* Full width of the card */
            height: 200px; /* Increase the height for a larger image */
            object-fit: cover; /* Maintain aspect ratio */
            border-radius: 4px;
        }

        .product-item h3 {
            font-size: 1.2rem;
            margin: 12px 0;
            color: #333;
        }

        .product-item p {
            font-size: 1rem;
            color: #555;
            margin: 8px 0;
            font-weight: bold;
        }

        /* Adjusted styling for form elements */
        .product-item form {
            display: flex;
            flex-direction: column; /* Keep vertical alignment */
            gap: 8px;
            align-items: center; /* Center align form items */
            margin-top: 10px;
        }

        .form-row {
            display: flex; /* Use flexbox for layout */
            justify-content: space-between; /* Space between elements */
            width: 100%; /* Full width for the row */
        }

        .product-item button {
            padding: 8px 16px;
            background-color: #28a745;
            color: #D4F6FF;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%; /* Full width button */
        }

        .product-item button:hover {
            background-color: #D4F6FF;
        }

        .product-item select,
        .product-item input[type="number"] {
            padding: 6px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%; /* Full width for inputs */
            max-width: 120px; /* Limit width for size and quantity */
            box-sizing: border-box; /* Include padding in width */
        }

        /* Footer Styling */
        footer {
            color: #fff;
            text-align: center;
            padding: 10px 0;
            background-color: #C6E7FF;
            width: 100%;
            bottom: 0; /* Align to bottom */
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Imperial Attire!</h1>
        <nav>
            <ul>
                <li>
                    <form action="<c:url value='/logout'/>" method="post">
                        <button type="submit" class="text-button">Logout</button>
                    </form>
                </li>
                <li><a href="<c:url value='/cart'/>">Cart</a></li>
                <li>
                    <form action="/about" method="get" style="display: inline;">
                        <button type="submit" class="text-button">About</button>
                    </form>
                </li>
            </ul>
        </nav>
    </header>

    <main>
        <h2 style="color: #000">Available Products</h2>
        <div class="product-list">
            <c:if test="${empty products}">
                <p>No products available at the moment.</p>
            </c:if>
            <c:forEach var="product" items="${products}">
                <div class="product-item">
                    <img src="<c:url value='${product.imageUrl}'/>" alt="${product.name}" />
                    <h3>${product.name}</h3>
                    <p>Price: $${product.price}</p>
                    <form action="<c:url value='/addToCart'/>" method="post">
                        <input type="hidden" name="productId" value="${product.id}" />
                        <div class="form-row">
                            <label for="size">Size:</label>
                            <select name="size" required>
                                <option value="S">S</option>
                                <option value="M">M</option>
                                <option value="L">L</option>
                            </select>
                        </div>
                        <div class="form-row">
                            <label for="quantity">Quantity:</label>
                            <input type="number" name="quantity" min="1" value="1" required />
                        </div>
                        <button type="submit">Add to Cart</button>
                    </form>
                </div>
            </c:forEach>
        </div>
    </main>

    <footer>
        <p>&copy; 2024 Imperial Attire. All rights reserved.</p>
    </footer>
</body>
</html>
