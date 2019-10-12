<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Properties"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration Form</title>
<link rel="stylesheet" type="text/css"
	href="css/customerRegistration.css">
</head>
<script language="JavaScript">
	window.focus();
	function validateForm() {
		if (document.registration.firstName.value == "") {
			alert("FirstName Mandatory to Fill");
			document.registration.firstName.focus();
			return false;
		} else if (document.registration.lastName.value == "") {
			alert("LastName Mandatory to Fill");
			document.registration.lastName.focus();
			return false;
		} else if (document.registration.emailId.value == "") {
			alert("emailId Mandatory to Fill");
			document.registration.emailId.focus();
			return false;
		} else if (document.registration.mobileNo.value == "") {
			alert("MobileNo Mandatory to Fill");
			document.registration.mobileNo.focus();
			return false;
		} else if (document.registration.password.value == "") {
			alert("Password Mandatory to Fill");
			document.registration.password.focus();
			return false;
		}
	}
	function Clear() {
		document.getElementById("firstName").value = "";
		document.getElementById("lastName").value = "";
		document.getElementById("emailId").value = "";
		document.getElementById("mobileNo").value = "";
		document.getElementById("password").value = "";

	}
</script>
<body>
	<div class="container">
		<img src="images/registration1.png"><br> <br>
		<form:form method="POST" action="customerRegistration.htm"
			name="registration" commandName="registration"
			onSubmit="return validateForm()">
			<div class="form-input">
				<form:label path="firstName"></form:label>
				<form:input path="firstName" id="firstName"
					placeholder="Enter FirstName.." />
				<form:errors path="firstName" />
			</div>
			<div class="form-input">
				<form:label path="lastName"></form:label>
				<form:password path="lastName" id="lastName"
					placeholder="Enter LastName.." />
				<form:errors path="lastName" />
			</div>
			<div class="form-input">
				<form:label path="emailId"></form:label>
				<form:password path="emailId" id="emailId"
					placeholder="Enter EmailId.." />
				<form:errors path="emailId" />
			</div>
			<div class="form-input">
				<form:label path="mobileNo"></form:label>
				<form:password path="mobileNo" id="mobileNo"
					placeholder="Enter MobileNo.." />
				<form:errors path="mobileNo" />
			</div>

			<div class="form-input">
				<form:label path="password"></form:label>
				<form:password path="password" id="password"
					placeholder="Enter Password.." />
				<form:errors path="password" />
			</div>
			<div class="form-input">
				<form:label path="confirmPassword"></form:label>
				<form:password path="confirmPassword" id="confirmPassword"
					placeholder="Enter ConfirmPassword.." />
				<form:errors path="confirmPassword" />
			</div>
			<br>
			<input type="submit" name="submit" value="Submit" />
			<input type="reset" value="Reset" onClick="Clear();" />
		</form:form>
	</div>
</body>
</html>