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
    <title>Update Profile</title>
<style>
* {
    font-family: Arial, sans-serif;
}

body {
    background-image: url('https://images.squarespace-cdn.com/content/v1/634e857e148025091c8eacc0/4ebc17eb-e9e3-405e-b025-655b027f1d5b/PRG+Page+Banner+.png'); /* Replace with the path to your image */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    margin: 0;
    padding: 0;
    overflow: hidden;
}

.container {
    width: 26%;
    height: auto;
    background: rgba(255, 255, 255, 0.95);
    padding: 40px;
    border-radius: 19px;
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.9);
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
    overflow: hidden;
    left: 535px;
    top: 40px;
    transform: perspective(1px) translateZ(0);
    z-index: -1;
    margin: 0;
    transition: opacity 0.7s ease-in-out;
}

.container::before, .container::after {
    content: '';
    position: absolute;
    width: 300%;
    height: 500%;
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
        transform: translate(-50%, -50%) rotate(90deg);
    }
}

.proassn {
    width: 85%;
    padding: 12px;
    margin-top: 10px;
    margin-left: 25px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 1px solid #ddd;
    font-size: 1em;
    background: #f9f9f9;
    transition: all 0.3s ease;
    align-items: center;
    justify: center;
}

.proassn input {
    width: 100%;
    border: none;
    background: transparent;
    font-size: 1em;
    color: #000;
    cursor: pointer;
}

.proassn input:focus {
    outline: none;
}

.label {
    color: #003366;
    margin-bottom: 2px;
    display: block;
    font-weight: 600;
    font-size: 25px;
    position: relative;
    left: -125px;
}

.label2 {
    color: #003366;
    margin-bottom: 2px;
    display: block;
    font-weight: 600;
    font-size: 25px;
    position: relative;
    left: -70px;
}

.label3 {
    color: #003366;
    margin-bottom: 2px;
    display: block;
    font-weight: 600;
    font-size: 25px;
    position: relative;
    left: -110px;
}

.label4 {
    color: #003366;
    margin-bottom: 10px;
    display: block;
    font-weight: 600;
    font-size: 35px;
    position: relative;
    left: 6px;
    top: -15px;
}

.example {
    visibility: hidden;
    color: #003366;
    margin-bottom: 5px;
    display: block;
    font-weight: 600;
    font-size: 35px;
    position: relative;
    left: 6px;
    top: -15px;
}

.btn-group {
    text-align: center;
    margin: 10px 0;
    width: 100%;
    display: flex;
    justify-content: space-around;
    z-index: 9999;
    position: relative;
    left: 20px;
    top: -45px;
}

.btn-group button {
    width: 85%;
    padding: 12px;
    margin-top: 10px;
    margin-left: 25px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: none;
    font-size: 1em;
    background: #003366;
    color: #fff;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
    align-items: center;
    justify: center;
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
    height: 50%;
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
    top: 10px;
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
        transform: translate(-50%, -50%) rotate(90deg);
    }
}

header {
    text-align: center;
    margin-bottom: 10px;
}

h2 {
    color: #003366;
    font-size: 1.8em;
    margin: 0;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.2);
    font-weight: bold;
    padding: 10px;
}

label {
    color: #003366;
    margin-bottom: 5px;
    display: block;
    font-weight: 600;
    font-size: 20px;
    position: relative;
    left: -110px;
}



input[type="text"] {
    width: 240%;
    padding: 12px;
    margin-top: 10px;
    margin-left: -115px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 1px solid #ddd;
    font-size: 1em;
    background: #f9f9f9;
    transition: all 0.3s ease;
}

input[type="email"] {
    width: 240%;
    padding: 12px;
    margin-top: 10px;
    margin-left: -115px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 1px solid #ddd;
    font-size: 1em;
    background: #f9f9f9;
    transition: all 0.3s ease;
}

input[type="password"] {
    width: 240%;
    padding: 12px;
    margin: 9px 20px;
    margin-left: -115px;
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
    margin: 10px 0;
    width: 150%;
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
    position: relative;
    top: 50px;
    left: -50px;
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
        padding: 100px;
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

<%

int cloginid = (int)session.getAttribute("Cssnid");

%>
<div class="container">
		<header>
            <h2>Update Profile</h2>
        </header>
<form action = "EupdateprofileNEWDB.jsp" method ="post">
			<label>SSN ID</label>
			<input type="text" id="cloginid" value="<%= cloginid %>"name="cloginid" placeholder="Enter SSN ID">
			<label>Name</label>
			<input type="text" id="name" name="name" placeholder="Enter Name">
			<label>Email</label>
			<input type="email" id="email" name="email" placeholder="Enter Email">
			<label>Password</label>
			<input type="password" id="password" name="password" placeholder="Enter Password">
			<label>Address</label>
			<input type="text" id="address" name="address" placeholder="Enter Address">
			<label>Phone Number</label>
			<input type="text" id="phonenumber" name="phonenumber" placeholder="Enter Phonenumber">
			<div class="btn-group">
			<button type="submit" id="updateprofile"  name="updateprofile">Update Profile</button>
			</div>
		</form>
		</div>
</body>
</html>