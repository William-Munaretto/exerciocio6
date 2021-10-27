<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de emprego - Canadá</title>
<style>
body{
	background: #A9A9A9 ;
}

h1{
	text-align: center;
	font-size: 56px;
}

h2{
	font-size: 28px;
}

#nome-id{
	
	padding: 5px;
	width: 300px;
}

label{

	font-size: 20px;
}

#submit{
	padding: 5px;
	width: 150px;
	border: 3px solid red;
	border-radius: 10px;
}


</style>
</head>
<body>
	<h1>CanadaTech</h1>
	<h2>Cadastro para vaga de emprego:</h2>
	<form action="processa-form" method="get" enctype="multipart/form-data">
		<!-- nome -->
		<label for="nome-id" style="font-weight:bold">Nome Completo:</label><br/><br />
		<input id="nome-id" type="text" name="campo-nome" value="Digite aqui seu nome">
		
		<br />
		<br />
		<br />
		<!-- Radio -->
		<h3>Selecione o seu idioma nativo:</h3>
		<input type="radio" checked="checked" name="idioma" value="Inglês"><label>Inglês</label><br />
		<input type="radio" name="idioma" value="Espanhol"><label>Espanhol</label><br />
		<input type="radio" name="idioma" value="Portugues"><label>Português</label><br />
		
		<br />
		<br />
		
		<!-- Seleção de habilidades -  checkbox -->
		<h3>Selecione as suas habilidades/conhecimentos:</h3>
		<input type="checkbox" name="habilidades" value="Java"><label>Java</label><br />
		<input type="checkbox" name="habilidades" value="JavaScript"><label>JavaScript</label><br />
		<input type="checkbox" name="habilidades" value="HTML"><label>HTML</label><br />
		<input type="checkbox" name="habilidades" value="CSS"><label>CSS</label><br />
		
		<br /><br />
		
		<input id="submit" type="submit" value="Enviar dados" />
		
	</form>
</body>
</html>