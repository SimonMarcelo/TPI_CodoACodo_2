<%@page import="Clases.SociosDAO" %>
<%@page import="Clases.Socios" %>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuevo Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="Vistas/Estilos.css"/>
<link href="https://fonts.googleapis.com/css2?family=Koulen&family=Lobster&display=swap" rel="stylesheet"></head>
<body class="bg-secondary">
	<div class="container-fluid col-8 mx-auto ">
		<h1 class="text-center pt-4 mb-2 titulo">Añadir Socio</h1>
		<div class="row">
			<form class="p-5 d-flex flex-column" action="SociosController?accion=insert" method="post">
			<div class="mb-3">
				<label for="nombre" class="form-label etiqueta">Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre">
			</div>
			<div class="mb-3">
				<label for="apellido" class="form-label etiqueta">Apellido</label>
				<input type="text" class="form-control" id="apellido" name="apellido">
			</div>
			<div class="mb-3">
				<label for="dni" class="form-label etiqueta">DNI</label>
				<input type="number" class="form-control" id="dni" name="dni">
			</div>
			<div class="mb-3">
				<label for="mail" class="form-label etiqueta">Mail</label>
				<input type="email" class="form-control" id="mail" name="mail">
			</div>
			<button type="submit" class="btn btn-primary mt-4 col-5 align-self-center boton">Insertar</button>
			</form>
		</div>
	</div>
</body>
</html>