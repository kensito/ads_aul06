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

<title>Hora da Pipoca</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<c:import url="Menu.jsp"/>
	<div class = "contairner">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<h1 class="text-center">A Hora da Pipoca</</h1>
				<div class="lead">
					<p class="text-center">O cadastro de filmes preferido da disciplina de ArqDes.</p>
					<p class="text-center">ADS - USJT - 2020</p>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
		<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
				<div class="center-block"></div>
				<img src="img/hora_pipoca.jpg" class="img-reponsive"/>
			</div>
			<div class="col-xs-4"></div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>