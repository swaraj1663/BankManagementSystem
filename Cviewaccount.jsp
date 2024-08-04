<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMS Bank</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  
    transition: opacity 0.9s ease-in-out;
}


.fade-out {
    opacity: 0;
}

.top-bar {
    background-color: #000;
    color: #fff;
    display: flex;
    justify-content: space-between;
    padding: 10px 20px;
    font-size: 14px;
   
}

.top-bar a {
    color: #fff;
    margin-right: 15px;
    text-decoration: none;
}

.top-bar-right a {
    margin-left: 15px;
}

nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #490d71;
    padding: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.quote{
    color: #fff;
    font-style: italic;
    align-items: center;
}

.logo {
    display: flex;
    align-items: center;
    position: relative;
    left: 20px;
}

.logo h1 span{
    color: #ffffff;
    font-weight: 500;
    font-style: bold;
    font-size: 40px;
    position: relative;
    top: -1px;
    left: 35px;
}

.logo h3 span{
    color: #ffffff;
    font-weight: 100;
    font-style: normal;
    font-size: 40px;
    position: relative;
    left: 45px;
    top: -1px;
}

.logo img {
    height: 75px;
    margin-right: -25px;
    border-radius: 50%;
    border: 3px solid white; /* White border around the image */
    width: 50px; /* Adjust the size as needed */
    height: 50px; /* Ensures the image is a perfect circle */
    object-fit: cover;
    box-shadow: #000;

}

.nav-links {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.nav-links li {
    margin-right: 20px;
}

.nav-links a {
    text-decoration: none;
    color: #333;
}



.auth-buttons button {
    margin-left: -30px;
    margin-right: 40px;
    padding: 10px 20px;
    border: none;
    border-radius: 30px;
    color: #111010;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
}

.auth-buttons button:first-child {
    background-color: #d1b2e0;
    font-weight: bold;
}

.auth-buttons button:first-child:hover{
    background: #a76bcf;
    transform: translateY(-2px);
}

.auth-buttons button:first-child:active{
    transform: translateY(0);
}

.auth-buttons button:last-child {
    background-color: #d1b2e0;
    font-weight: bold;
}

.auth-buttons button:last-child:hover{
    background: #a76bcf;
    transform: translateY(-2px);
}

.auth-buttons button:last-child:active{
    transform: translateY(0);
}

.auth-buttons2 button {
    margin-left: -30px;
    margin-right: 40px;
    padding: 10px 20px;
    border: none;
    border-radius: 30px;
    color: #111010;
    cursor: pointer;
    gap: 90px;
    transition: background 0.3s, transform 0.2s;
}

.auth-buttons2 button:first-child {
    background-color: #490d71;
    font-weight: bold;
    position: relative;
    top: -150px;
    left: 230px;
    margin-bottom: -100px;
    gap: 50px;

}

.auth-buttons2 button:first-child:hover{
    background: #a76bcf;
    transform: translateY(-2px);
    color: black;
}

.auth-buttons2 button:first-child:active{
    transform: translateY(0);
}

.auth-buttons2 button:last-child {
    background-color: #490d71;
    font-weight: bold;
}

.auth-buttons2 button:last-child:hover{
    background: #a76bcf;
    transform: translateY(-2px);
    color: black;
}

.auth-buttons2 button:last-child:active{
    transform: translateY(0);
}

.auth-buttons j{
    visibility: hidden;
}

.auth-buttons2 i{
    visibility: hidden;
}

.hero {
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: url('https://media.licdn.com/dms/image/D4D12AQE0bWXuf4TZiw/article-cover_image-shrink_720_1280/0/1721891899966?e=2147483647&v=beta&t=6EUCIIz05FbIMEF0E-S8TiKBl0_Q6sFVmLYVIvzCd_w') no-repeat center center;
    background-size: cover;
    padding: 250px 20px;
    color: #fff;
}

.hero-content {
    max-width: 50%;
    position: relative;
    left: 20px;
}

.hero h1 {
    font-size: 48px;
    margin-bottom: 20px;
    color:#592b78;
}

.hero h1 span {
    color:#8e04ea;
}

.hero p {
    font-size: 18px;
    margin-bottom: 30px;
    color: #3f0069;
}

.hero button {
    padding: 15px 30px;
    background-color: #490d71;
    border: none;
    border-radius: 20px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
}

.features {
    display: flex;
    justify-content: space-around;
    background-color:#ebd1fe;
    padding: 50px 20px;
}

.feature {
    text-align: center;
    max-width: 200px;
}

.feature img {
    height: 70px;
    margin-bottom: 1px;
    z-index: 0;
}


.feature h3 {
    font-size: 18px;
    margin-bottom: 5px;
    margin-top: 5px;
}

.feature p {
    font-size: 14px;
    color: #666;
}

.footer {
    display: flex;
    justify-content: space-around;
    padding: 40px 0;
    background-color: #111;
}
.footer-column {
    max-width: 200px;
}

.footer-column img {
    height: 75px;
    margin-right: -25px;
    border-radius: 50%;
    border: 3px solid white; /* White border around the image */
    width: 50px; /* Adjust the size as needed */
    height: 50px; /* Ensures the image is a perfect circle */
    object-fit: cover;
    box-shadow: #000;

}

.footer h3 {
    font-size: 16px;
    margin-bottom: 10px;
    color: #fff;
}
.footer p {
    font-size: 14px;
    line-height: 1.6;
    color: #fff;
    padding-top: 1px;
    position: relative;
    top: -70px;
}
.footer h1{
    position: relative;
    color: #fff;
    top: -70px;
    right: -70px;
    padding-bottom: 10px;
}

.footer ul {
    list-style-type: none;
    padding: 0;
}
.footer ul li {
    margin-bottom: 10px;
}
.footer ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 14px;
}
.footer .social-icons {
    display: flex;
    gap: 40px;
    margin-top: 80px;
}
.footer .social-icons a {
    color: #fff;
    text-decoration: none;
    font-size: 20px;
}

.footer .social-icons a.facebook {
    color: #3b5998;
}
.footer .social-icons a.twitter {
    color: #1da1f2;
}
.footer .social-icons a.instagram {
    color: #e4405f;
}
.footer .branch-search {
    max-width: 250px;
}
.footer .branch-search select,
.footer .branch-search input {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: none;
    border-radius: 4px;
}
.footer .branch-search button {
    width: 100%;
    padding: 10px;
    background-color: #f00;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.footer1{
        font-family: Arial, sans-serif;
        background-color: #111;
        color: #fff;
        margin: 0;
        padding: 0;

}

.container {
        width: 35%;
        
        background: rgba(255, 255, 255, 0.95);
        padding: 40px;
        border-radius: 19px;
        box-shadow: 0 12px 24px rgba(0, 0, 0, 0.9);
        display: flex;
        flex-direction: column;
        align-items: center;
        position: relative;
        overflow: hidden;
        top: -200px;
        margin: 0 auto;
        transition: opacity 0.7s ease-in-out;
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
    
    .container button{
    position: relative;
    left: 80px;
    
    }

    @keyframes rotateGradient {
        0% {
            transform: translate(-65%, -65%) rotate(0deg);
        }
        100% {
            transform: translate(-60%, -60%) rotate(90deg);
        }
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
    font-size: 2em;
    position: relative;
    left: -79px;
}



input[type="text"] {
    width: 150%;
    padding: 12px;
    margin-top: 10px;
    margin-left: -83px;
    margin-bottom: 20px;
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
<body>
<header>
        
        <nav>
            <div class="logo">
                <img src="https://img.freepik.com/free-vector/3d-style-indian-currency-rupee-sign-white-background-design_1017-44530.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1722470400&semt=ais_hybrid" alt="rupees"> 
                <h1><span>BMS Bank</span></h1>
                
            </div>
            <div class="quote">
                <i>"Smart solutions for efficient banking"</i>
            </div>
            <div class="auth-buttons">
                <a href="Cviewaccount.jsp"><button><span><i class="fas fa-user"><j>.</j></i>     Profile</span></button></a>
                <a href="MainnnnHomeee.jsp"><button onclick="transitionToPage('MainnnnHomeee.jsp')"><span><i class="fas fa-power-off"><j>.</j></i>     Logout</span></button></a>
            </div>
        </nav>
    </header>
    <main>
        <section class="hero">
            <div class="container">
         <form action = "CviewprofileDB.jsp" method ="post">
			<label>Enter SSN ID</label>
			<input type="text" id="cloginid" name="cloginid" placeholder="Enter SSN ID" required>
			
			<button type="submit" id="cloginsubmit" value="ShowDeatils" name="cloginsubmit">Show Details</button>
			</div>
		</form>
            </div>
            <!-- <div class="hero-image">
                <img src="" alt="Credit Card">
            </div> -->
        </section>
        <section class="features">
            <div class="feature">
                <img src="https://cdn-icons-png.freepik.com/512/7146/7146724.png" alt="Secure International Transaction">
                <h3>Secure International Transaction</h3>
                <p>International transactions are safe and secure</p>
            </div>
            <div class="feature">
                <img src="https://cdn-icons-png.freepik.com/256/6060/6060239.png?semt=ais_hybrid" alt="24/7 Support from the Expert Team">
                <h3>24/7 Support from the Expert Team</h3>
                <p>Expert support at any time</p>
            </div>
            <div class="feature">
                <img src="https://cdn-icons-png.flaticon.com/512/7202/7202496.png">
                <h3>Lowest Processing Fee than Other Banks</h3>
                <p>Processing fee at lowest possible</p>
            </div> 
            <div class="feature">
                <img src="https://cdn-icons-png.freepik.com/512/10149/10149529.png" alt="Less Time in any Loans Approval">
                <h3>Less Time in any Loans Approval</h3>
                <p>Fastest loan approval</p>
            </div>
        </section>
    </main>

    <footer1>

    <footer class="footer">
        <div class="footer-column">
            <img src="https://img.freepik.com/free-vector/3d-style-indian-currency-rupee-sign-white-background-design_1017-44530.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1722470400&semt=ais_hybrid" alt="BMSBank Logo">
            <h1>BMS</h1>
            <p>BMSBank sets the standard for excellence with innovative services and exceptional customer care.</p>
            
        </div>
        <div class="footer-column">
            <h3>Explore</h3>
            <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Testimonials</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Career Detail</a></li>
                <li><a href="#">FAQ's</a></li>
            </ul>
        </div>
        <div class="footer-column">
            <h3>Useful Links</h3>
            <ul>
                <li><a href="#">Credit Card</a></li>
                <li><a href="#">Saving Account</a></li>
                <li><a href="#">Digital Gift Cards</a></li>
                <li><a href="#">Apply for Loans</a></li>
                <li><a href="#">Mobile Application</a></li>
            </ul>
        </div>
        <div class="social-icons">
            <a href="#" class="facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" class="instagram"><i class="fab fa-instagram"></i></a>
        </div>
        
    </footer>
</footer1>
<script>
function transitionToPage(url) {
    document.body.classList.add('fade-out');
    setTimeout(() => {
        window.location.href = url;
    }, 200); // Match the duration of the CSS transition
}

</script>
</body>
</html>