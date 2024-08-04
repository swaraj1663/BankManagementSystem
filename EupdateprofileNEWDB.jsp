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
PreparedStatement st = null;
int cssnid1 = (int)session.getAttribute("Cssnid");
%>

<% 
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String address = request.getParameter("address");
String phonenumber = request.getParameter("phonenumber");
try{ 
	 Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
	   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
	   String sql = "Update empDB set Name=?, Password =?, Email=?, Address=?, PhoneNumber=? where SSNID = ?";
	   
	   st = con.prepareStatement(sql);
	   st.setInt(6, cssnid1);
	   st.setString(1, name);
	   st.setString(3, email);
	   st.setString(2, password);
	   st.setString(4, address);
	   st.setString(5, phonenumber);
	   
	   int check1 = st.executeUpdate();
	   if(check1>0){%> 
		   <script>
		   alert("Details Updated Successfully");
		   
		   window.location.href = "EHome.jsp"; 
			   </script>
	   <%}
	   else{%>
		   <script>
		   alert("Details Updated Failed");
		   
		   window.location.href = "EHome.jsp"; 
			   </script>
	 <%  }

	 	   st.close();
		   con.close();   
    
  } 
	   catch(Exception e){
		   System.out.println(e);
	   }
%>


</body>
</html>

