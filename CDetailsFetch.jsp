<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.squarespace-cdn.com/content/v1/634e857e148025091c8eacc0/4ebc17eb-e9e3-405e-b025-655b027f1d5b/PRG+Page+Banner+.png'); /* Replace with the path to your image */
    background-size: cover;
            margin: 0;
            padding: 0;
            
        }

        h2 {
            text-align: center;
            color: #fff; /* Dark blue color */
            font-size: 40px; /* Font size for the heading */
            margin-bottom: 5px; /* Space below the heading */
        }

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 80%;
            margin: 0 auto;
            margin-top: 50px;
            border-collapse: collapse;
            background-color: rgba(230, 230, 250, 0.8); /* Lavender shade with opacity */
        }

        th, td {
            border: 1px solid rgba(200, 200, 200, 0.8); /* Light grey border with opacity */
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: rgba(230, 230, 250, 0.9); /* Slightly more opaque lavender */
            color: #4b0082; /* Indigo color for text */
        }

        tr:nth-child(even) {
            background-color: rgba(245, 245, 245, 0.8); /* Light grey with opacity for alternate rows */
        }

        tr:hover {
            background-color: rgba(220, 220, 220, 0.8); /* Light grey hover effect */
        }
        
        label {
    color: #003366;
    margin-bottom: 5px;
    display: block;
    font-weight: 300px;
    font-size: 30px;
    position: relative;
    left: 5px;
    top: 40px;
}



input[type="number"] {
    width: 100%;
    padding: 12px;
    margin-top: 50px;
    margin-left: -3px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 1px solid #ddd;
    font-size: 1em;
    background: #f9f9f9;
    transition: all 0.3s ease;
}

.btn-group {
    text-align: center;
    margin: 20px 0;
    width: 10%;
    display: flex;
    justify-content: space-around;
}

.btn-group button {
    padding: 15px 60px;
    background: #003366;
    color: #fff;
    border: none;
    border-radius: 8px;
    font-size: 1em;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
    flex: 1;
    margin: 5px;
    position: relative;
    left: 80px;
    top: -10px;
    
}
.btn-group button:hover {
    background: #004099;
    transform: translateY(-2px);
}

.btn-group button:active {
    transform: translateY(0);
}

.container {
   
    width: 26%;
    height: 40%;
    background: rgba(255, 255, 255, 0.95);
    padding: 40px;
    border-radius: 19px;
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.9);
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    overflow: hidden;
    left: 530px;
    top: 70px;
    transform: perspective(1px) translateZ(0);
    z-index: 1000;
    margin:0;
    transition: opacity 0.7s ease-in-out;
}

.container::before, .container::after {
    content: '';
    position: absolute;
    width: 300%;
    height: 300%;
    top: 0;
    left: 0;
    background: radial-gradient(circle, rgba(255, 255, 255, 2.0), rgba(0, 0, 255, 2.0));
    animation: rotateGradient 6s infinite linear;
    z-index: -1;
    transform: translate(-50%, -50%);
    opacity: 0.3;
    transition: opacity 0.7s ease-in-out;
}

.container::after {
    animation-direction: reverse;
    opacity: 0.15;
}

@keyframes rotateGradient {
    0% {
        transform: translate(-65%, -65%) rotate(0deg);
    }
    100% {
        transform: translate(-70%, -70%) rotate(90deg);
    }
}

        
    </style>
</head>
<body>
    <h2>Customer Details</h2>
    <div class="container">
    <form action="fetchAccounts.jsp" method="get">
        <label for="balance">Enter Balance Threshold</label>
        <input type="number" id="balance" name="balance" placeholder="Enter Balance Threshold" required>
        <div class="btn-group">
        <button type="submit" value="Search">Search</button>
        </div>
    </form>
    </div>

    
</body>
</html>