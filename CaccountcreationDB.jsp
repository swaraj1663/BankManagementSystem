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
<body>
<%

Connection con = null;
int check=0;
PreparedStatement st = null;
try{ 
	String naname=request.getParameter("customerName");
   String naemail = request.getParameter("email");
   String naaccountnumber = request.getParameter("accountNumber");
   String naifscCode = request.getParameter("ifscCode");
   //int nainitialBalance = Integer.parseInt(request.getParameter("initialBalance"));
   String naaadharNumber = request.getParameter("aadharNumber");
   String napanCard = request.getParameter("panCard");
   String nadob = request.getParameter("dob");
   String nagender = request.getParameter("gender");
   String namaritalStatus = request.getParameter("maritalStatus");
   String submit = request.getParameter("Submit");
   
   if(submit.equals("Submit")){
		   Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
		   String sql = "Insert into cnewaccountDB2 values(?,?,?,?,?,?,?,?,?,?) ";
		   st = con.prepareStatement(sql);
		   st.setString(1, naname);
		   st.setString(2, naemail);
		   st.setString(3, naaccountnumber);
		   st.setString(4, naifscCode);
		   st.setInt(5, 1000);
		   st.setString(6, naaadharNumber);
		   st.setString(7, napanCard);
		   st.setString(8, nadob);
		   st.setString(9, nagender);
		   st.setString(10, namaritalStatus);
		   check = st.executeUpdate();
		   
		   System.out.println(check);%>
		   <script>
		   <%if(check>0){%>
			   alert("Account Creation Successful");
			   window.location.href = "CHome.jsp";
		   <%}%>
		   </script>
		   
		  <% 
		   st.close();
		   con.close();   
   }
   	   
   } 
	   catch(Exception e){
		   System.out.println(e);
	   }
   
   %>
   
   
</body>
</html>