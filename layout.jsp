<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>
<table border="1" cellpadding="2" cellspacing="2" align="center">
		<tr>
			<td height="40" colspan="2"><tiles:insertAttribute name="header" />
			</td>
		</tr>
		<tr>
			 <td height="350px" width="350px"><tiles:insertAttribute name="menu" /></td> 
			<td height="500px" width="1500px" ><tiles:insertAttribute name="body" /></td> 
		
		</tr>
		<tr>
		 
		</tr>
		<tr>
			<td height="30" colspan="2"><tiles:insertAttribute name="footer" />
			</td>
		</tr>
	</table>
</body>
</html>                                                                                                                                                                                                    