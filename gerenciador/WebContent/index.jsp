<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<h1>Bem vindo à página de testes do nosso gerenciador de empresas!</h1>

<h2>
<c:if test="${usuarioLogado!=null}">
	Você está logado como ${usuarioLogado.email}<br/>
</c:if>
</h2>

<h3>teste de login</h3>

<form action="Controller?tarefa=Login" method="post">
	Email: <input type="text" name="email" /><br />
	Password: <input type="text" name ="senha" /><br />
	<input type="submit" value="Login" />
</form>
</br></br>

<h3>Teste do método de inclusão de empresa:</h3>

<form action="Controller?tarefa=NovaEmpresa" method="post">
	Nome: <input type="text" name="nome" /><br />
	<input type="submit" value="Enviar" />
</form>
</br></br>

<h3>teste da busca de empresas</h3>
<form action="Controller?tarefa=BuscaEmpresa" method="post">
	Filtro:<input type="text" name ="filtro" />
	<input type="submit" value="busca" />
</form>

</br></br>

<h3>teste de logout</h3>
<form action="Controller?tarefa=Logout" method="post">
	<input type="submit" value="logout" />
</form>

</body>
</html>