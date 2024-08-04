<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
        @import url('https://fonts.googleapis.com/css2?family=Arial:wght@400;500&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
        
            font-family: 'Arial', sans-serif; /* Match font to the first page */
            margin: 0;
            background-image: url('https://img.freepik.com/premium-photo/medium-purple-color-piggy-bank-purple-background_989263-11639.jpg');
            background-position: -300px -150px;
            background-size: 95%;
            padding: 0;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            max-width: 500px;
            width: 100%;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 19px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.9);
            display: flex;
            flex-direction: column;
            align-items: center;
            position: relative;
            overflow: hidden;
            left: 350px;
            transform: perspective(1px) translateZ(0);
        }

        .container::before, .container::after {
            content: '';
            position: absolute;
            width: 300%;
            height: 300%;
            top: 0;
            left: 0;
            background: radial-gradient(circle, rgba(255, 255, 255, 0.9), rgba(0, 0, 255, 1.0));
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
                transform: translate(-65%, -65%) rotate(0deg);
            }
            100% {
                transform: translate(-70%, -70%) rotate(90deg);
            }
        }

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        h2 {
            color: #003366;
            font-size: 1.8em;
            margin: 0;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
            font-weight: bold;
            padding: 20px;
        }

        label {
            color: #003366;
            margin-bottom: 10px;
            display: block;
            font-weight: 600;
            font-size: 1em;
        }

        input[type="text"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 1em;
            background: #f9f9f9;
            transition: all 0.3s ease;
        }
        
        input[type="number"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 1em;
            background: #f9f9f9;
            transition: all 0.3s ease;
        }

        input:focus {
            border-color: #0056b3;
            box-shadow: 0 0 10px rgba(0, 86, 179, 0.3);
            outline: none;
        }

        input:focus::after {
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

        input:focus::after {
            width: 200%;
            height: 200%;
        }

        .btn-group {
            text-align: center;
            margin: 20px 0;
            width: 100%;
            display: flex;
            justify-content: space-around;
        }

        .btn-group button {
            padding: 10px 20px;
            background: #003366;
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            cursor: pointer;
            transition: background 0.3s, transform 0.2s;
            flex: 1;
            margin: 5px;
        }
.btn-group button:hover {
            background: #004099;
            transform: translateY(-2px);
        }

        .btn-group button:active {
            transform: translateY(0);
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h2 {
                font-size: 1.5em;
            }

            input[type="text"] {
                font-size: 0.875em;
            }

            .btn-group button {
                font-size: 0.875em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h2>Choose Your Transaction</h2>
        </header>
        <form action="CtransactionDB.jsp" method="post">
            <label for="accountNumber">Enter Bank Account Number</label>
            <input type="text" id="accountNumber" name="accountNumber" placeholder="Account number"><br><br>
            <label for="Amount">Enter Amount</label>
            <input type="number" id="amount" name="amount" placeholder="Enter Amount"><br><br>
            <div class="btn-group">
                <button type="submit" name="action" value="deposit">Deposit</button>
                <button type="submit" name="action" value="withdraw">Withdraw</button>
                <button type="submit" name="action" value="checkBalance">Check Balance</button>
            </div>
        </form>
    </div>

</body>
</html>