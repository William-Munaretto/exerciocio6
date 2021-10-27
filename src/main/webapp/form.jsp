<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body{

}

#cadastro{
	width: 300px;
	border: 2px solid red;
	background: #D3D3D3;
	margin: 0 auto;
	padding: 10px;

}

h2{
	text-align: center;
	color: blue;
	
	margin-bottom: 100px;
}

h1{
	font-size: 56px;
	text-align: center;
}



</style>
</head>
<body>

	<% String nome = (String) request.getAttribute("nomeAttr"); %>
	<% String idioma = (String) request.getAttribute("idiomaAttr"); %>
	<% String[] habilidades = (String[]) request.getAttribute("habAttr"); %>
	
	<h1>CanadaTech</h1>
	<h2>Cadastro efetuado com sucesso!!!</h2>
	<div id="cadastro">
		<!-- nome -->
		<p><strong>Nome:</strong>  <%out.print(nome); %></p>
		<br/>
		
		<!-- idioma nativo -->
		<p><strong>Idioma nativo:</strong>  <%out.print(idioma);%></p>
		<br />
		
		<!-- Lista de habilidades -->
		<p><strong>Habilidades:</strong></p>
		<%for(String hab : habilidades) {%>
			<ul>
				<li><%out.print(hab); %></li>
			</ul>
		
		<%}%>
	</div>
	
	

</body>
</html>