<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html lang="pt-BR">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Cadastro Web - Alterar Usuario</title>
    <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="shortcut icon" href="assets/images/favicon.png" />
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
          <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
            <div class="card col-lg-4 mx-auto">
              <div class="card-body px-5 py-5">
                <h3 class="card-title text-left mb-3">Alterar Usuario</h3>
                <form method="post" action="alterarUsuario">
                	<input type="hidden" name="id" value="${usuario.id}">	
                  <div class="form-group">
                    <label>Nome</label>
                    <input type="text" class="form-control p_input" name="nome" value="${usuario.nome}">
                  </div>
                  <div class="form-group">
                    <label>E-mail</label>
                    <input type="email" class="form-control p_input" name="email" value="${usuario.email}">
                  </div>
                  <div class="form-group">
                    <label>Senha</label>
                    <input type="password" class="form-control p_input"  name="senha1" >
                  </div>
                  <div class="form-group">
                    <label>Senha confirmada:</label>
                    <input type="password" class="form-control p_input"  name="senha2" >
                  </div>
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary btn-block enter-btn">Salvar</button>
                  </div>
                  <div class="d-flex">
                    <button class="btn btn-facebook col mr-2">
                      <i class="mdi mdi-facebook"></i> Facebook </button>
                    <button class="btn btn-google col">
                      <i class="mdi mdi-google-plus"></i> Google plus </button>
                  </div>
                  <p class="terms">Deseja desistir de atualizar?<a href="cadastrarUsuario"> Clique qui!</a></p>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="assets/js/off-canvas.js"></script>
    <script src="assets/js/hoverable-collapse.js"></script>
    <script src="assets/js/misc.js"></script>
    <script src="assets/js/settings.js"></script>
    <script src="assets/js/todolist.js"></script>
  </body>
</html>