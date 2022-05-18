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
    <h1 style="color:green">${msg}</h1>
	<form action="/saveLoc" method="post">
		<table>
            <tr>
              <td><a href="showAll">View ALL</a></td>
            </tr>
			<tr>
				<td><label for="id"><b>Id</b></label></td>
				<td><input type="text" name="id" id="id" required></td>
			</tr>
			<tr>
				<td><label for="code"><b>Code</b></label></td>
				<td><input type="text" name="code" id="code" required></td>
			</tr>
			<tr>
				<td><label for="name"><b>Name</b></label></td>

				<td><input type="text" name="Name" id="name" required></td>

			</tr>
			<tr>
				<td><label for="type" id="type"><b>Type</b></label></td>

				<td><b>Urban :</b><input type="radio" name="type" value="URBAN"
					checked> <b>Rural :</b><input type="radio" name="type"
					value="RURAL"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Submit"></td>
			</tr>
            
		</table>
	</form>
	
</body>
</html>