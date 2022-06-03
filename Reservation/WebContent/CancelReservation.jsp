<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Want Cancel Your Booking?</title>
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}
</style>
</head>
<body>

<body>
<%
			
			String phoneNo = request.getParameter("phoneNo");


%>

	
	
		<div align="center">
		<h1>Are You Sure You Want to Cancel Your Booking?</h1>
		
		<form  action="delete" method="post">
		<table>
		
			<tr>
				<td><b>BOOKING</b></td>
				<td><input type="text" name="pno" class="text" value="<%= phoneNo%>" readonly></td>
			</tr>
			
			
			
			<tr>
				<td> </td>
				<td><input type="submit" name="submit" class="button button3" value="Proceed"> </td>
			
			</tr>
			
	</table>
	</form>
	</div>
	<br><br>


</body>
</html>