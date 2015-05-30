
<%@ page import="si_inventarios.Kardex" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kardex.label', default: 'Kardex')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-kardex" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-kardex" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cantidad" title="${message(code: 'kardex.cantidad.label', default: 'Cantidad')}" />
					
						<g:sortableColumn property="tipoDeMovimiento" title="${message(code: 'kardex.tipoDeMovimiento.label', default: 'Tipo De Movimiento')}" />
					
						<g:sortableColumn property="fecha" title="${message(code: 'kardex.fecha.label', default: 'Fecha')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'kardex.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="kardex.producto.label" default="Producto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${kardexInstanceList}" status="i" var="kardexInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${kardexInstance.id}">${fieldValue(bean: kardexInstance, field: "cantidad")}</g:link></td>
					
						<td>${fieldValue(bean: kardexInstance, field: "tipoDeMovimiento")}</td>
					
						<td>${fieldValue(bean: kardexInstance, field: "fecha")}</td>
					
						<td>${fieldValue(bean: kardexInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: kardexInstance, field: "producto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${kardexInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
