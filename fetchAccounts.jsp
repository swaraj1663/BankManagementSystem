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
            color: #4b0082;
            font-size: 22px; /* Indigo color for text */
        }

        tr:nth-child(even) {
            background-color: rgba(245, 245, 245, 0.8); /* Light grey with opacity for alternate rows */
        }

        tr:hover {
            background-color: rgba(220, 220, 220, 0.8); /* Light grey hover effect */
        }
        
        .btn-group button{
position: relative;
top: 150px;
left: 720px;
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
       
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Load and register the JDBC driver
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            conn = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");

            // Get the balance threshold from the form
            int balanceThreshold = Integer.parseInt(request.getParameter("balance"));
            if (balanceThreshold != 0 ) {
                // Prepare and execute the query
                String query = "SELECT customerName, accountNumber, initialbalace FROM cnewaccountDB2 WHERE initialbalace < ?";
                stmt = conn.prepareStatement(query);
                stmt.setInt(1, balanceThreshold);
                rs = stmt.executeQuery();
    %>

    <table>
    	<h2>Customer Details</h2>
        <thead>
            <tr>
                <th>Account ID</th>
                <th>Account Name</th>
                <th>Balance</th>
            </tr>
        </thead>
        <tbody>
            <% while (rs.next()) { %>
                <tr>
                    <td><%= rs.getString("customerName") %></td>
                    <td><%= rs.getString("accountNumber") %></td>
                    <td><%= rs.getInt("initialbalace") %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
    
    <div class="btn-group">
           <a href="EHome.jsp"><button>Home</button></a>
       </div>

    <%
            } 
        } catch (Exception e) {
            e.printStackTrace();
            
        } 
    %>
</body>
</html>