<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>

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
            left: 450px;
            top: 10px;
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
        
        .proassn {
    width: 85%;
    padding: 12px;
    margin-top: 10px;
    margin-left: -20px;
    margin-bottom: 20px;
    border-radius: 8px;
    border: 1px solid #ddd;
    font-size: 1em;
    background: #f9f9f9;
    transition: all 0.3s ease;
    align-items: center;
    justify: center;
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

.btn-group button{
position: relative;
top: 150px;
left: 150px;
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

.btn-group button::hover{
background: #004099;
    transform: translateY(-2px);
}

.btn-group button:active {
    transform: translateY(0);
}

</style>
<body>
<% 
int acntnumber = Integer.parseInt(request.getParameter("accountNumber"));
String transaction = request.getParameter("action");
int amount = Integer.parseInt(request.getParameter("amount"));
PreparedStatement st = null;
PreparedStatement st1 = null;
Connection con=null;
int actbal = 0;

if(transaction.equals("deposit")){
	try{
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
		   String sql = "Select initialbalace from cnewaccountDB2 where accountNumber = ?";
		   st = con.prepareStatement(sql);
		   st.setInt(1, acntnumber);
		   ResultSet rs = st.executeQuery();
		   if(rs.next()){
		   actbal = rs.getInt("initialbalace");
		   }
		   
		   String sql1 = "Update cnewaccountDB2 set initialbalace=? where accountNumber = ?";
		   st1 = con.prepareStatement(sql1);
		   st1.setInt(2, acntnumber);
		   st1.setInt(1, actbal+amount);
		   int check1 = st1.executeUpdate();
		   
		   if(check1>0){%>
		   <script>
		   		alert("Money Deposited Successfully");
		   		window.location.href = "CHome.jsp";
		   </script>
			   
		 <%  }
	}
	catch(Exception e){
		   System.out.println(e);
	   }
	

}

if(transaction.equals("withdraw")){
	try{
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
		   String sql = "Select initialbalace from cnewaccountDB2 where accountNumber = ?";
		   st = con.prepareStatement(sql);
		   st.setInt(1, acntnumber);
		   ResultSet rs = st.executeQuery();
		   if(rs.next()){
		   actbal = rs.getInt("initialbalace");
		   }
		   
		   String sql1 = "Update cnewaccountDB2 set initialbalace=? where accountNumber = ?";
		   st1 = con.prepareStatement(sql1);
		   st1.setInt(2, acntnumber);
		   st1.setInt(1, actbal-amount);
		   int check1 = st1.executeUpdate();
		   
		   if(check1>0){%>
		   <script>
		   		alert("Money Withdrawal Successful");
		   		window.location.href = "CHome.jsp";
		   </script>
			   
		 <%}
	}
	catch(Exception e){
		   System.out.println(e);
	   }
}

if(transaction.equals("checkBalance")){
	try{
		Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
		   String sql = "Select initialbalace from cnewaccountDB2 where accountNumber = ?";
		   st = con.prepareStatement(sql);
		   st.setInt(1, acntnumber);
		   ResultSet rs = st.executeQuery();
		   if(rs.next()){
		   actbal = rs.getInt("initialbalace");
		   }%>
		   
		   <div class="container">
           
           <div class="label">Your Current Balance</div>
           <div class="proassn"><%= actbal %></div>
           
       </div>
       <div class="btn-group">
           <a href="CHome.jsp"><button>Home</button></a>
       </div>
		   <% 
		   int check1 = st.executeUpdate();
		   
		   if(check1>0){%>
		   <script>
		   
		   		window.location.href = "CHome.jsp";
		   </script>
			   
		    <% }
	}
	catch(Exception e){
		   System.out.println(e);
	   }
}
%>
</body>
</html>