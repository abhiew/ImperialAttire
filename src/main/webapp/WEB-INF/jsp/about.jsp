<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="<c:url value='/css/style.css'/>">
    <style>
    	header,footer {
    		
    		background-color: #C6E7FF
    	}
    	h1{
    		color: #fff;
    	}
    	body{
    		background-color: #FBFBFB;
    	}
        /* Additional styling for About page */
        .about-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }

        .about-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px; /* Increase width for larger images */
            text-align: center;
            padding: 16px;
            background-color: #D4F6FF;
        }

        .about-card img {
            width: 100%; /* Full width of the card */
            height: auto; /* Let height adjust according to image */
            border-radius: 4px;
        }

        .about-card h3 {
            font-size: 1.2rem;
            margin: 12px 0;
            color: #333;
        }

        .about-card p {
            font-size: 0.9rem;
            color: #555;
            margin: 8px 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>About Imperial Attire</h1>
        <nav>
            <ul>
				<li>
  					  <form action="<c:url value='/logout'/>" method="post" style="display: inline;">
  				      <a href="#" onclick="this.closest('form').submit(); return false;">Logout</a>
  					  </form>
				</li>
                <li><a href="<c:url value='/cart'/>">Cart</a></li>
                <li><a href="<c:url value='/customerHome'/>">Home</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="about-container">
            <div class="about-card">
                <img src="<c:url value='/images/abhi.jpg'/>" alt="Abhijith MA" />
                <h3>Abhijith MA</h3>
                <p>I am a CSE student in the 2021-2025 batch at UKFCET.</p>
            </div>
            <div class="about-card">
                <img src="<c:url value='/images/aswa.jpg'/>" alt="Person 2" />
                <h3>Aswanath JS</h3>
                <p>I am a CSE student in the 2021-2025 batch at UKFCET.</p>
            </div>
            <div class="about-card">
                <img src="<c:url value='/images/meenamaa.jpg'/>" alt="Person 3" />
                <h3>Meenakshi Shibu</h3>
                <p>I am a CSE student in the 2021-2025 batch at UKFCET.</p>
            </div>
            <div class="about-card">
                <img src="<c:url value='/images/archa.jpg'/>" alt="Person 5" />
                <h3>Archa Radhakrishnan Pillai</h3>
                <p>I am a ECE student in the 2021-2025 batch at UKFCET.</p>
            </div>
            <div class="about-card">
                <img src="<c:url value='/images/vinaya.jpg'/>" alt="Person 6" />
                <h3>Vinaya VS</h3>
                <p>I am a ECE student in the 2021-2025 batch at UKFCET.</p>
            </div>
        </div>
    </main>

    <footer>
        <p style="color: #fff">&copy; 2024 Imperial Attire. All rights reserved.</p>
    </footer>
</body>
</html>

