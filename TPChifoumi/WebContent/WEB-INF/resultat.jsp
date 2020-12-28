<%@ page
	language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%!
	int resultat;
	int choixUser;
	int choixCPU;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Résultat Janken</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<div class="jumbotron text-center">
		<h1 class="my-4">Résultat</h1>
	</div>
	
	<%choixUser = (int)request.getAttribute("choixUser"); %>
	<%choixCPU = (int)request.getAttribute("choixCPU"); %>
	<%resultat = (int)request.getAttribute("resultat"); %>
	
	<div class="row">
		<div class="container col-sm-6 text-center">
			<%
				if(choixUser==1)
				{
					out.write("Choix du Joueur : Pierre");
				}
				else if(choixUser==2)
				{
					out.write("Choix du Joueur : Feuille");
				}
				else
				{
					out.write("Choix du Joueur : Ciseaux");
				}
			%>
		</div>
		<div class="container col-sm-6 text-center">
			<%
				if(choixCPU==1)
				{
					out.write("Choix de l'ordinateur : Pierre");
				}
				else if(choixCPU==2)
				{
					out.write("Choix de l'ordinateur : Feuille");
				}
				else
				{
					out.write("Choix de l'ordinateur : Ciseaux");
				}
			%>
		</div>
	</div>
	<div class="container text-center resultat" style="margin-top : 50px; font-weight : bold;">
		<%
			if(resultat==0)
			{
				out.write("Egalité !");
			}
			else if(resultat==1)
			{
				out.write("Vous avez gagné !");
			}
			else
			{
				out.write("Vous avez perdu..");
			}
		%>
	</div>
	
	<div class="container text-center" style="margin-top : 50px;">
		<a href="<%=request.getContextPath() %>/jouer">Rejouer</a>
	</div>
	
	
	

	<footer class="py-5 fixed-bottom">
		<div class="container">
			<p class="m-0 text-center">Copyright &copy; - Assane - 2020</p>
		</div>
	</footer>
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>