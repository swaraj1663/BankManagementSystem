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

<%
	int cloginid = Integer.parseInt(request.getParameter("cloginid"));
	String cloginpass = request.getParameter("cloginpass");
	//HttpSession hs = request.getSession();
%>
<body>
<% 
Connection con = null;
PreparedStatement st = null;
boolean isValidUser = false;
try{ 
	 Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
	   con = DriverManager.getConnection("jdbc:derby:C:\\Users\\bhara\\MyDB;create=true");
	   String sql = "Select SSNID, Password from empDB where SSNID = ?";
	   
	   st = con.prepareStatement(sql);
	   st.setInt(1, cloginid);
	   
	   ResultSet rs = st.executeQuery();
	   
	   if(rs.next()){
		   int dbssnid = rs.getInt("SSNid");
		   String dbpassword = rs.getString("Password");
		   
		   if (cloginpass.equals(dbpassword) && cloginid == dbssnid ){
			    isValidUser = true;
			    
			    
		   }
	   }
	   
	 	   st.close();
		   con.close();   
     
   } 
	   catch(Exception e){
		   System.out.println(e);
	   }
   
   %>
   <% if(isValidUser){
	   session.setAttribute("Cssnid", cloginid);
	   response.sendRedirect("EHome.jsp");
   }
   if(!isValidUser){%>
	   <script>
	   alert("Login Failed. Enter Correct Credentials")
	   </script>
	  <%  response.sendRedirect("ELogin.jsp");
   }
   %>

</body>
</html>
