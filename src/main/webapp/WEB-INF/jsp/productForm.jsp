<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Product</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image: url("https://m.economictimes.com/thumb/msid-100234604,width-1600,height-900,resizemode-4,imgsize-17300/zaras-flagship-store-at-phoenix-palladium-reopened-its-doors-today-.jpg");
        }

        /* Container for the form */
        .container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            width: 400px;
            box-sizing: border-box;
            text-align: center;
        }

        /* Form header */
        h2 {
            color: #111;
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Form groups */
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }

        /* Labels */
        label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
        }

        /* Input fields */
        input[type="text"],
        textarea,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }

        /* Textarea customization */
        textarea {
            resize: vertical;
        }

        /* Submit button */
        .submit-button {
            background-color: #f0c14b;
            border: 1px solid #a88734;
            color: #111;
            font-size: 16px;
            font-weight: bold;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
        }

        /* Submit button hover */
        .submit-button:hover {
            background-color: #d6a33c;
        }

        /* View products link */
        .view-products, .back-to-admin {
            display: block;
            margin-top: 20px;
            color: #0066c0;
            text-decoration: none;
            font-weight: bold;
        }

        /* Hover effect on links */
        .view-products:hover, .back-to-admin:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Add New Product</h2>
        <form action="/addProduct" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Product Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="text" id="price" name="price" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="size">Size:</label>
                <input type="text" id="size" name="size" required>
            </div>
            <div class="form-group">
                <label for="file">Image:</label>
                <input type="file" id="file" name="file" accept="image/*" required>
            </div>
            <div class="form-group">
                <input type="submit" value="Add Product" class="submit-button">
            </div>
        </form>
        <a href="/productList" class="view-products">View Products</a>
        <!-- Link to go back to admin login -->
        <a href="/admin/adminLogin" class="back-to-admin">Back to Admin Login</a>
    </div>
</body>
</html>
