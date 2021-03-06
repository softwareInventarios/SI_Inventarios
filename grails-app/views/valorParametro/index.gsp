
<%@ page import="si_inventarios.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-valorParametro" class="content scaffold-list" role="main">
			<h3 align="center">Valor Parametro</h3>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover table-striped table-responsive">
			<thead>
					<tr>
					
						<g:sortableColumn property="valor" title="${message(code: 'valorParametro.valor.label', default: 'Valor')}" />
					
						<g:sortableColumn property="orden" title="${message(code: 'valorParametro.orden.label', default: 'Orden')}" />
					
						<g:sortableColumn property="descValParametro" title="${message(code: 'valorParametro.descValParametro.label', default: 'Desc Val Parametro')}" />
					
						<g:sortableColumn property="estadoValorParametro" title="${message(code: 'valorParametro.estadoValorParametro.label', default: 'Estado Valor Parametro')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'valorParametro.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="valorParametro.parametro.label" default="Parametro" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${valorParametroInstanceList}" status="i" var="valorParametroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${valorParametroInstance.id}">${fieldValue(bean: valorParametroInstance, field: "valor")}</g:link></td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "orden")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "descValParametro")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "estadoValorParametro")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: valorParametroInstance, field: "parametro")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                        <div class="nav" role="navigation">
                                <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<a class="btn btn-warning" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				
			
		</div>
			<div class="pagination">
				<g:paginate total="${valorParametroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
