<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>YourBooking</title>
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  height: 300px;
  max-width: 300px;
  margin: auto;
  text-align: left;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

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

<h1 align="center">Your Reservation</h1>
<div class="card">
	<table>
	<c:forEach var="us" items ="${usDetails}">
	
	<c:set var ="fname" value="${us.fname}"/>
	<c:set var ="lname" value="${us.lname}"/>
	<c:set var ="phoneNo" value="${us.phoneNo}"/>
	<c:set var ="totRooms" value="${us.totRooms}"/>
	<c:set var ="luxRoom" value="${us.luxRoom}"/>
	<c:set var ="cupRoom" value="${us.cupRoom}"/>
	<c:set var ="stanRoom" value="${us.stanRoom}"/>
	<c:set var ="famRoom" value="${us.famRoom}"/>
	<c:set var ="arrDate" value="${us.arrDate}"/>
	<c:set var ="depDate" value="${us.depDate}"/>
	
	
	<tr>
		<td>First Name</td>
		<td>${us.fname}</td>
	</tr>
	
	<tr>
		<td>Last Name</td>
		<td>${us.lname}</td>
	</tr>
	
	<tr>
		<td>Phone Number</td>
		<td>${us.phoneNo}</td>
	</tr>
	
	<tr>
		<td>Total Rooms</td>
		<td>${us.totRooms}</td>
	</tr>
	
		<tr>
		<td>Luxury Rooms</td>
		<td>${us.luxRoom}</td>
	</tr>
	
		<tr>
		<td>Couple Rooms</td>
		<td>${us.cupRoom}</td>
	</tr>
	
		<tr>
		<td>Standard Rooms</td>
		<td>${us.stanRoom}</td>
	</tr>
	
		<tr>
		<td>Family Rooms</td>
		<td>${us.famRoom}</td>
	</tr>
	
	<tr>
		<td>Arrival</td>
		<td>${us.arrDate}</td>
	</tr>
	
	<tr>
		<td>Departure</td>
		<td>${us.depDate}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	</div>
	<br>
	
	<c:url value="CancelReservation.jsp" var="usdelete">
	
	<c:param name ="fname" value="${fname}"/>
	<c:param name ="lname" value="${lname}"/>
	<c:param name ="phoneNo" value="${phoneNo}"/>
	<c:param name ="totRooms" value="${totRooms}"/>
	<c:param name ="luxRoom" value="${luxRoom}"/>
	<c:param name ="cupRoom" value="${cupRoom}"/>
	<c:param name ="stanRoom" value="${stanRoom}"/>
	<c:param name ="famRoom" value="${famRoom}"/>
	<c:param name ="arrDate" value="${arrDate}"/>
	<c:param name ="depDate" value="${depDate}"/>
	</c:url>
	
	<div align="center">
	<a href = "${usdelete}">
	<button class="button button3" name="delete">Click here to Cancel your booking</button>
	</a>
	</div>

</body>
</html>