<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Account Creation</title>
     <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #d1b2e0;
            display: flex;
            justify-content: center;
            background-image: url('https://images.squarespace-cdn.com/content/v1/634e857e148025091c8eacc0/4ebc17eb-e9e3-405e-b025-655b027f1d5b/PRG+Page+Banner+.png'); /* Replace with the path to your image */
    background-size: 100%;
    background-position: 30px -80px;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            overflow-y: auto;
        }

        .container {
            background: #fff;
            padding: 35px;
            border-radius: 12px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            position: relative;
            left: -20px;
            overflow: hidden;
            transform: perspective(1px) translateZ(0);
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
        }

        .container::after {
            animation-direction: reverse;
            opacity: 0.15;
        }

        @keyframes rotateGradient {
            0% {
                transform: translate(-50%, -50%) rotate(0deg);
            }
            100% {
                transform: translate(-50%, -50%) rotate(90deg);
            }
        }

        h1 {
            color: #003366; /* Blue color for the title and heading */
            margin-bottom: 20px;
            text-align: center;
            font-size: 30px;
            font-weight: bold;
        }

        form {
            display: grid;
            gap: 20px;
        }

        label {
            color: #003366; /* Blue color for labels */
            font-weight: 600;
            margin-bottom: 2px;
            display: block;
        }

        input, select, button {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            width: 100%;
            background: #f9f9f9;
            transition: all 0.3s ease;
        }

        input:focus, select:focus {
            border-color: #0056b3;
            box-shadow: 0 0 10px rgba(0, 86, 179, 0.3);
            outline: none;
        }

        button {
            background: #003366;
            color: #ffffff;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: background 0.3s, transform 0.2s;
        }

        button:hover {
            background: #004099;
            transform: translateY(-2px);
        }

        button:active {
            transform: translateY(0);
        }

        /* Add a subtle animation to form elements */
        input, select, button {
            position: relative;
            overflow: hidden;
        }

        input:focus::after, select:focus::after {
            content: '';
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 0;
            height: 0;
            background: rgba(0, 86, 179, 0.1);
            border-radius: 50%;
            transition: width 0.4s ease, height 0.4s ease;
            z-index: -1;
        }

        input:focus::after, select:focus::after {
            width: 200%;
            height: 200%;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }

            input, select, button {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Customer Account Creation</h1>
        <form action = "CaccountcreationDB.jsp" id="accountForm">
            <label for="customerName">Customer Name</label>
            <input type="text" id="customerName" name="customerName" placeholder="Enter Name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" required>

            <label for="accountNumber">Account Number</label>
            <input type="text" id="accountNumber" name="accountNumber" placeholder="Enter Account Number" required>

            <label for="ifscCode">IFSC Code</label>
            <input type="text" id="ifscCode" name="ifscCode" placeholder="Enter IFSC Code" required>

            <label for="initialBalance">Initial Balance</label>
            <input type="number" id="initialBalance" value = "1000" name="initialBalance"  readonly>

            <label for="aadharNumber">Aadhar Number</label>
            <input type="text" id="aadharNumber" name="aadharNumber" placeholder="Enter Aadhar Number" required>

            <label for="panCard">PAN Card</label>
            <input type="text" id="panCard" name="panCard" placeholder="Enter PAN Number" required>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" placeholder="Enter Date of Birth" required>

            <label for="gender">Gender</label>
            <select id="gender" name="gender" required>
                <option value="">Select</option>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>

            <label for="maritalStatus">Marital Status:</label>
            <select id="maritalStatus" name="maritalStatus" required>
                <option value="">Select</option>
                <option value="single">Single</option>
                <option value="married">Married</option>
                <option value="divorced">Divorced</option>
            </select>

           

            <button type="submit" value = "Submit" name = "Submit">Create Account</button>
        </form>
    </div>
</body>
</html>
</body>
</html>