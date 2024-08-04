<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@ page import="org.mindrot.jbcrypt.BCrypt" %>
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
PreparedStatement st = null;
boolean registrationsuccess = false;
Random random = new Random();
int SSNid = random.nextInt(999999);
try{ 
	
	
   String name=request.getParameter("cname");
   String password = request.getParameter("cpassword");
   String email = request.getParameter("cemail");
   String confirmpassword = request.getParameter("cconfirmpassword");
   String address = request.getParameter("caddress");
   String phnnumber = request.getParameter("cnumber");
   //String generate = request.getParameter("cgenerate");
   String submit = request.getParameter("csubmit");
   //out.print(name+ "   "+ password+ "   "+ submit);
   
   
  
   
   
   if(submit.equals("Submit") && password.equals(confirmpassword)){
		   Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
		   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
		   String sql = "Insert into CUSTOMERDB2 values(?,?,?,?,?,?,?)";
		   
		   st = con.prepareStatement(sql);
		   st.setString(2, name);
		   st.setString(3, email);
		   st.setString(4, password);
		   st.setString(5, confirmpassword);
		   st.setString(6, address);
		   st.setString(7, phnnumber);
		   st.setInt(1, SSNid);		   
		   int check = st.executeUpdate();
		   if (check>0){
			   registrationsuccess = true;
		   }
		   
		   st.close();
		   con.close();   
   }
   else{%>
	   <script>
	   alert("Password is not equal to Confirm Password");
	   setTimeout(function(){
		   window.location.href = "CRegister.jsp"
	   }, 2000);
	   </script>
	   <% 
   }
   } 
	   catch(Exception e){
		   System.out.println(e);
	   }
   
   %>
   <script>
   <% if(registrationsuccess){%>
   window.onload = function() {showPopupAndRedirect('<%= SSNid %>');};
   <% }%>
   
  function showPopupAndRedirect(SSNid){
	   alert("Registration Successfull. Your SSN iD is:" + SSNid);
	   setTimeout(function(){
		   window.location.href = "CLogin.jsp"
	   }, 200);
   }
   
   <% if(!registrationsuccess){%>
   window.onload = showPopupAndRedirect2;
   <% }%>
   
   function showPopupAndRedirect2(){
	   alert("Registration Failed");
	   setTimeout(function(){
		   window.location.href = "CRegister.jsp"
	   }, 2000);
   }
  
   </script>
  
  
</body>
</html>