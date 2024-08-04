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
    height: 100%;
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
    padding: 10px 20px;
    background: #003366;
    color: #fff;
    border: none;
    border-radius: 8px;
    font-size: 1em;
    cursor: pointer;
    transition: background 0.3s, transform 0.2s;
    flex: 1;
    margin: 2px;
    z-index: 9999;
}

.btn-group button:hover {
    background: #004099;
    transform: translateY(-2px);
}

.btn-group button:active {
    transform: translateY(0);
}
</style>
</head>

<%
    int cloginid = Integer.parseInt(request.getParameter("cloginid"));
    String viewsubmit = request.getParameter("cloginsubmit");
%>
<body>
<% 
    int ssnid = 0;
    String name = null;
    String email = null;
    String Address = null;
    String Phonenumber = null;
    Connection con = null;
    PreparedStatement st = null;
    boolean isValidUser = false;

    if(viewsubmit.equals("ShowDeatils")){
        try { 
            Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
            con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
            String sql = "Select SSNid, Name, Email, Address, PhoneNumber from CustomerDB2 where SSNID = ?";
            
            st = con.prepareStatement(sql);
            st.setInt(1, cloginid);
            
            ResultSet rs = st.executeQuery();
            
            if(rs.next()){
                ssnid = rs.getInt("SSNid");
                name = rs.getString("Name");
                email = rs.getString("Email");
                Address = rs.getString("Address");
                Phonenumber = rs.getString("PhoneNumber");
            }
%>
            <div class="container">
                <div class="label4">Profile</div>
                <div class="label">SSN ID</div>
                <div class="proassn"><%= ssnid %></div>
                <div class="label">Name</div>
                <div class="proassn"><%= name %></div>
                <div class="label">Email</div>
                <div class="proassn"><%= email %></div>
                <div class="label3">Address</div>
                <div class="proassn"><%= Address %></div>
                <div class="label2">Phone Number</div>
                <div class="proassn"><%= Phonenumber %></div>
                <div class="example">hiiiiiii</div>
            </div>
            <div class="btn-group">
                <a href="Cprofileupdate.jsp"><button>Update Profile</button></a>
            </div>
<%
            st.close();
            con.close();   
        } catch(Exception e) {
            System.out.println(e);
        }
    }
%>
</body>
</html>
