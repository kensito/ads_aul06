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
<title>Filme</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<c:import url="Menu.jsp" />
	<div class="contairner">
		<c:if test="${empty filme}">
			<div class="row">
				<h3 class="bg-warning text-center"> Filme não encontrado!!</h3>
			</div>
		</c:if>
		<c:if test="${not empty filme}">
			<div class="row">
				<div class="col-md-3">
					<img src="${filme.posterPath}" class="img-rounded img-reponsive">
				</div>
				<div class="col-md-9">

					<fmt:setLocale value="pt_BR" />
					<h1>Filme id: ${filme.id}</h1>
					<p><strong>Título: </strong>${filme.titulo}</p>
					<p><strong>Descrição: </strong>${filme.descricao}</p>
					<p><strong>Diretor: </strong>${filme.diretor}</p>
					<p><strong>Gênero: </strong>${filme.genero.nome}</p>
					<p><strong>Lançamento: </strong>
						<fmt:formatDate value="${filme.dataLancamento}" dateStyle="FULL" />
					</p>
					<p>
						<strong>Popularidade: </strong>
						<fmt:formatNumber value="${filme.popularidade}"
							minFractionDigits="2" maxFractionDigits="2" />
					</p>

				</div>
			</div>
		</c:if>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>