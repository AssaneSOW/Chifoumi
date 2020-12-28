<%@page import="fr.eni.tpchifoumi.ihm.ServletTraitement"%>
<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%!
// 	String msg = "hahaha";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Janken</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class="jumbotron text-center">
		<h1 class="my-4">Challenge de Pierre Feuille Ciseaux</h1>
		<p>Faites votre choix</p>
	</div>

	
	<div class="container text-center">
	<form action="ServletTraitement">
		<button type="submit" value="1" name="choix">Pierre</button>
		<button type="submit" value="2" name="choix">Feuille</button>
		<button type="submit" value="3" name="choix">Ciseaux</button>
	</form>
	</div>

<%-- 	<%Integer.parseInt(msg);%> --%>


	<footer class="py-5 fixed-bottom">
		<div class="container">
			<p class="m-0 text-center">Copyright &copy; - Assane - 2020</p>
		</div>
	</footer>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>