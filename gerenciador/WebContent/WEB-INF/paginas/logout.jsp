<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
	<p>
		<%
			Object usuario = request.getAttribute("usuario");
			if(usuario != null){
				out.println("Logout do usuario " + usuario + " efetuado!");
			} else {
				out.println("Usuário não estava logado!");
			}
		%>
	</p>
</body>
</html>