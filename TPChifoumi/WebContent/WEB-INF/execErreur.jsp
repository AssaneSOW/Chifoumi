<%@ page
		language="java"
		contentType="text/html; charset=UTF-8"
    	pageEncoding="UTF-8"
    	isErrorPage = "true"
    	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ErrorExec</title>
</head>
<body>
	<h1>An unmanaged exception occurred..!</h1>
	<p>
		<%=exception.getMessage() %>
	</p>
</body>
</html>