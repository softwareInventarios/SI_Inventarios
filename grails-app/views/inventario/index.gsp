
<%@ page import="si_inventarios.Inventario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<h3 align="center">Reporte</h3>
<!--		<div id="list-inventario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="inventario.listaDeProductos.label" default="Lista De Productos" /></th>
					
						<g:sortableColumn property="eliminado" title="${message(code: 'inventario.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="inventario.producto.label" default="Producto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inventarioInstanceList}" status="i" var="inventarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inventarioInstance.id}">${fieldValue(bean: inventarioInstance, field: "listaDeProductos")}</g:link></td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "producto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>-->
<!--			<div class="pagination">
				<g:paginate total="${inventarioInstanceCount ?: 0}" />
			</div>-->
<!--		</div>-->
	</body>
</html>
