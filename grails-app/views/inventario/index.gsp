
<%@ page import="si_inventarios.Inventario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inventario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="inventario.listaDeProductos.label" default="Lista De Productos" /></th>
					
						<th><g:message code="inventario.listaDePrecios.label" default="Lista De Precios" /></th>
					
						<g:sortableColumn property="eliminado" title="${message(code: 'inventario.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="inventario.listadeprecios.label" default="Listadeprecios" /></th>
					
						<th><g:message code="inventario.producto.label" default="Producto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inventarioInstanceList}" status="i" var="inventarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inventarioInstance.id}">${fieldValue(bean: inventarioInstance, field: "listaDeProductos")}</g:link></td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "listaDePrecios")}</td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "listadeprecios")}</td>
					
						<td>${fieldValue(bean: inventarioInstance, field: "producto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inventarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
