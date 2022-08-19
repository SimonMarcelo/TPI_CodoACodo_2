<%@page import="Clases.SociosDAO" %>
<%@page import="Clases.Socios" %>
<%@page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nuestros Socios</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"/> 
<link rel="stylesheet" type="text/css" href="Vistas/Estilos.css"/>
<link href="https://fonts.googleapis.com/css2?family=Koulen&family=Lobster&display=swap" rel="stylesheet"></head>
<body class="bg-secondary">
	
	<div class="container-fluid">
	<h1 class="text-center pt-4 mb-5 titulo">Listado de Socios</h1>
		<div class="row col-8 mx-auto">
			<a class="btn btn-dark col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>
			
			<table class="table table-dark">
				<tr>
					<th>Id</th>	
					<th>Nombre</th>	
					<th>Apellido</th>	
					<th>DNI</th>	
					<th>Mail</th>	
					<th class="text-center">Estado</th>	
					<th class="text-center">Modificar</th>	
					<th class="text-center">Eliminar</th>	
				</tr>
				
				<%
				List<Socios> resultado=null;
				SociosDAO socio=new SociosDAO();
				resultado=socio.listarSocios();
				
				for(int i=0;i<resultado.size();i++){
					String ruta="SociosController?accion=modificar&id="+resultado.get(i).getId_socio();
					String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getId_socio();
				%>
				<tr>
				<td><%=resultado.get(i).getId_socio() %></td>
				<td><%=resultado.get(i).getNombre() %></td>
				<td><%=resultado.get(i).getApellido() %></td>
				<td><%=resultado.get(i).getDni() %></td>
				<td><%=resultado.get(i).getMail()%></td>
				<td class="text-center"><%=(resultado.get(i).getEstado()?"activo":"inactivo") %></td>
				<td class="text-center"><a href=<%=ruta%>><i class="fa-solid fa-pen"></i></a></td>
				<td class="text-center"><a href=<%=rutaE%>><i class="fa-solid fa-trash-can"></i></a></td>
				</tr>
				<%}%>
			</table>
		</div>
	</div>
</body>
</html>