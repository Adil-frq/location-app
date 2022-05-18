<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <%@page isELIgnored="false" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Location</title>
</head>
<body>
	<form action="updateLocation" method=Post>
		<table>
            
			<tr>
				<td><label for="id"><b>Id</b></label></td>
				<td><input type="text" name="id" id="id" value=${location.id} readonly></td>
			</tr>
			<tr>
				<td><label for="code"><b>Code</b></label></td>
				<td><input type="text" name="code" id="code" value=${location.code}></td>
			</tr>
			<tr>
				<td><label for="name"><b>Name</b></label></td>

				<td><input type="text" name="Name" id="name" value=${location.name}></td>

			</tr>
			<tr>
				<td><label for="type" id="type"><b>Type</b></label></td>

				<td><b>Urban :</b><input type="radio" name="type" value="URBAN"
					${location.type == "URBAN" ? 'checked' : '' }> 
					<b>Rural :</b><input type="radio" name="type"
					value="RURAL" ${location.type == "RURAL" ? 'checked' : ''}></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Update"></td>
			</tr>
            
		</table>
	</form>
	
</body>
</html>