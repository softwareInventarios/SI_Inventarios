
<%@ page import="si_inventarios.Conteo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conteo.label', default: 'Conteo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-conteo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-conteo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="referenciaProducto" title="${message(code: 'conteo.referenciaProducto.label', default: 'Referencia Producto')}" />
					
						<g:sortableColumn property="contado" title="${message(code: 'conteo.contado.label', default: 'Contado')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'conteo.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="conteo.producto.label" default="Producto" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conteoInstanceList}" status="i" var="conteoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conteoInstance.id}">${fieldValue(bean: conteoInstance, field: "referenciaProducto")}</g:link></td>
					
						<td>${fieldValue(bean: conteoInstance, field: "contado")}</td>
					
						<td>${fieldValue(bean: conteoInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: conteoInstance, field: "producto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conteoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
