
<%@ page import="si_inventarios.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-producto" class="content scaffold-list" role="main">
			<h3 align="center">Productos</h3>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover table-striped table-responsive">
			<thead>
					<tr>
					
						<g:sortableColumn property="referenciaProducto" title="${message(code: 'producto.referenciaProducto.label', default: 'Referencia Producto')}" />
					
						<g:sortableColumn property="nombreProducto" title="${message(code: 'producto.nombreProducto.label', default: 'Nombre Producto')}" />
					
						<g:sortableColumn property="cantidadinicial" title="${message(code: 'producto.cantidadinicial.label', default: 'Cantidadinicial')}" />
					
						<g:sortableColumn property="precio" title="${message(code: 'producto.precio.label', default: 'Precio')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'producto.eliminado.label', default: 'Eliminado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productoInstanceList}" status="i" var="productoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productoInstance.id}">${fieldValue(bean: productoInstance, field: "referenciaProducto")}</g:link></td>
					
						<td>${fieldValue(bean: productoInstance, field: "nombreProducto")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "cantidadinicial")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "precio")}</td>
					
						<td>${fieldValue(bean: productoInstance, field: "eliminado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                        <div class="nav" role="navigation">
                                <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<a class="btn btn-warning" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				
			
		</div>
			<div class="pagination">
				<g:paginate total="${productoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
