<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<script language="JavaScript">
	window.focus();
	function validateForm() {
		if (document.login.userName.value == "") {
			alert("User Name should be left blank");
			document.login.userName.focus();
			return false;
		} else if (document.login.password.value == "") {
			alert("Password should be left blank");
			document.login.password.focus();
			return false;
		}
	}
	function Clear() {
		document.getElementById("userName").value = "";
		document.getElementById("password").value = "";

	}
</script>
<body>
	<div class="container">
		<img src="images/admin1.png"><br> <br>

		<form:form method="Post" action="login.htm" name="login"
			commandName="login" onSubmit="return validateForm()">
			<div class="form-input">
				<form:label path="userName"></form:label>
				<form:input path="userName" id="userName"
					placeholder="Enter Username.." />
				<form:errors path="userName" />

			</div>
			<div class="form-input">
				<form:label path="password"></form:label>
				<form:password path="password" id="password"
					placeholder="Enter Password.." />
				<form:errors path="password" />
			</div>

			<br>
			<input type="submit" name="submit" value="Submit" />

			<input type="reset" value="Reset" onClick="Clear();" />
		</form:form>
	</div>

</body>
</html>