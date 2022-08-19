<%@page import="Clases.SociosDAO" %>
<%@page import="Clases.Socios" %>
<%@page import="java.util.List" %>

<!DOCTYPE html5>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Socio</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="Vistas/Estilos.css"/>
<link href="https://fonts.googleapis.com/css2?family=Koulen&family=Lobster&display=swap" rel="stylesheet"></head>
<body class="bg-secondary">
		<div class="container-fluid">
		<h1 class="text-center pt-4 mb-5 titulo">Modificar Socio</h1>
		<div class="row">
		<%
		String id=request.getParameter("id");
		int mid;
		mid=Integer.parseInt(id);
		
		Socios resultado=null;
		SociosDAO socio=new SociosDAO();
		resultado=socio.mostrarSocio(mid);
		%>
			<form class="px-5 pb-5 col-8 mx-auto d-flex flex-column" action="SociosController?accion=actualizar" method="post">
			<div class="mb-4">
				<input type="hidden" class="form-control" id="id_socio" name="id_socio" value=<%=resultado.getId_socio()%>>
			</div>
			<div class="mb-4">
				<label for="nombre" class="form-label etiqueta">Nombre</label>
				<input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre()%>>
			</div>
			<div class="mb-4">
				<label for="apellido" class="form-label etiqueta">Apellido</label>
				<input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido()%>>
			</div>
			<div class="mb-4">
				<label for="dni" class="form-label etiqueta">DNI</label>
				<input type="number" class="form-control" id="dni" name="dni" maxlength="8" oninput="if(this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" value=<%=resultado.getDni()%>>
			</div>
			<div class="mb-4">
				<label for="mail" class="form-label etiqueta">Mail</label>
				<input type="email" class="form-control" id="mail" name="mail" value=<%=resultado.getMail()%>>
			</div>
			<div class="mb-4">
				<label for="estado" class="form-label etiqueta">Estado</label>
			<div class="form-check">

  <input class="form-check-input" type="checkbox" value="true" id="estado" name="estado" <%=resultado.getEstado()?"checked":" " %> />
  <label class="form-check-label" for="estado" >
    Activo
  </label>
</div>			</div>
			<button type="submit" class="btn btn-primary mt-4 col-5 align-self-center boton">Actualizar</button>
			</form>
		</div>
	</div>
</body>
</html>