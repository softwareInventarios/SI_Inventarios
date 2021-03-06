
<%@ page import="si_inventarios.Conteo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'conteo.label', default: 'Conteo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-conteo" class="content scaffold-list" role="main">
			<h3 align="center">Productos</h3>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover table-striped table-responsive">
			<thead>
					<tr>
					
						<g:sortableColumn property="contado" title="${message(code: 'conteo.contado.label', default: 'Contado')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'conteo.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="conteo.producto.label" default="Producto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conteoInstanceList}" status="i" var="conteoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conteoInstance.id}">${fieldValue(bean: conteoInstance, field: "contado")}</g:link></td>
					
						<td>${fieldValue(bean: conteoInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: conteoInstance, field: "producto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                        <div class="nav" role="navigation">
                                <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<a class="btn btn-warning" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				
			
		</div>
			<div class="pagination">
				<g:paginate total="${conteoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
