<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Lista de Filmes</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<c:import url="Menu.jsp" />
	<div class="contairner">
		<div class="row">
			<h1>Lista de Filmes</</h1>
			<hr>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Pôster</th>
						<th>Id</th>
						<th>Título</th>
						<th>Gênero</th>
						<th>Diretor</th>
						<th>Lançamento</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="filme" items="${filmes }">
						<tr>
							<td><img src="${filme.posterPath}" class="img-thumbnail" width="70"></td>
							<td>${filme.id}</td>
							<td>${filme.titulo}</td>
							<td>${filme.genero.nome}</td>
							<td>${filme.diretor}</td>
							<td><fmt:formatDate value="${filme.dataLancamento}" dateStyle="SHORT"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>