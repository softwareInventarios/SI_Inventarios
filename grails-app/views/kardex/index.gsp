
<%@ page import="si_inventarios.Kardex" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'kardex.label', default: 'Kardex')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-kardex" class="content scaffold-list" role="main">
			<h3 align="center">Kardex</h3>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover table-striped table-responsive">
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
                        <div class="nav" role="navigation">
                                <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<a class="btn btn-warning" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				
			
		</div>
			<div class="pagination">
				<g:paginate total="${kardexInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
