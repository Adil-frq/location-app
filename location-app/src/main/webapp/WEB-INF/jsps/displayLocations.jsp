<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.location.entities.Location"%>
<%@page import="org.springframework.ui.ModelMap"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: black; color: white;">

	<h2>Locations</h2>
	<%-- ${locations}
	<%
	ModelMap model = new ModelMap();
	Location locations = (Location)model.getAttribute("locations");
	
    //out.println(locations);
	if (locations!= null && locations.getName().length() > 0) {
	%> --%>
	
	<table border="1" ${locations.size() > 0 ? 'style=display:block':'style=display:none'}>

		<tr>
			<th>Id</th>
			<th>Code</th>
			<th>Name</th>
			<th>Type</th>
		</tr>

		<c:forEach var="loc" items="${locations}">
			<tr>
				<!-- add jstl maven dependecy for this tag -->
				<td>${loc.id}</td>
				<td>${loc.code}</td>
				<td>${loc.name}</td>
				<td>${loc.type}</td>
				<td><a href="deleteLoc?id=${loc.id}"
					style="color: red; text-decoration: none">Delete</a></td>
				<td><a href="updateLoc?id=${loc.id}"
					style="color: orange; text-decoration: none">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<a href="/"
		style="color: white; text-decoration: none; border: 1px solid white; background: grey; padding: 2px; margin-top: 5px;">Add
		Locations</a>
</body>
</html>