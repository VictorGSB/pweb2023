<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt_BR">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Cadastro Web - Listagem de Usuarios</title>

<link rel="stylesheet"
	href="assets/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">

<link rel="stylesheet" href="assets/css/style.css">

<link rel="shortcut icon" href="assets/images/favicon.png" />
</head>
<body>
	<div class="content-wrapper">
		<div class="page-header">
			<h3 class="page-title"></h3>
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Tables</a></li>
					<li class="breadcrumb-item active" aria-current="page"></li>
				</ol>
			</nav>
		</div>
		<div class="row">
			<div class="col-lg-6 grid-margin stretch-card">
				<div class="card">
					<div class="card-body">
						<h4 class="card-title">Listagem de Usuarios</h4>
						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>ID</th>
										<th>Nome</th>
										<th>Email</th>
										<th colspan="2">&nbsp;</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${usuarios}" var="usu" varStatus="id">
										<tr>
											<td>${usu.id}</td>
											<td>${usu.nome}</td>
											<td><a href="mailto:${usu.email}">${usu.email}</a></td>
											<td><a href="alterarUsuario?id=${usu.id}"class="btn btn-success">Editar</a></td>
											<td><a href="excluirUsuario?id=${usu.id}"class="btn btn-danger">Excluir</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<a href="index.html" class="btn btn-primary">Voltar</a>
				</div>
			</div>
		</div>
</body>
</html>