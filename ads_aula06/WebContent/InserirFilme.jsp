<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Cadastrar Filme</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<c:import url="Menu.jsp" />
	<div class="contairner">
	<h1>Novo Filme</h1>
		<p class="lead"> Digite os dados do filme para cadastrar</p>
		<form action="manter_filmes.do" method="POST">
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>Tí­tulo do Filme: </label>
						<input type="text" name="titulo" class="form-control col-sm-2 control-label" required/>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>Descrição: </label>
						<input type="text" name="descricao" class="form-control" />
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>Diretor: </label>
						<input type="text" name="diretor" class="form-control" />
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>Gênero: </label>
						<select name="genero" class="form-control" required>
							<c:forEach var="genero" items="${generos}">
								<option value="${genero.id}">${genero.nome}</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-4"></div>
				</div>					
			</div>
		
			
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>Lançamento: </label>
						<input type="date" name="data_lancamento" class="form-control" />
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>Popularidade: </label><input type="number" name="popularidade" class="form-control"/>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<div class="col-md-8">
						<label>URL do Pôster: </label><input type="text" name="poster_path" class="form-control"/>
					</div>
					<div class="col-md-4"></div>
				</div>
			</div>
			<p><input type="submit" name="acao" value="inserir" class="btn btn-default"></p>
		</form>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>