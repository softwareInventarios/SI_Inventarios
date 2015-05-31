
<%@ page import="si_inventarios.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-parametro" class="content scaffold-list" role="main">
			<h3 align="center">Parametro</h3>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-bordered table-hover table-striped table-responsive">
			<thead>
					<tr>
					
						<g:sortableColumn property="atributo" title="${message(code: 'parametro.atributo.label', default: 'Atributo')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'parametro.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="tipoParametro" title="${message(code: 'parametro.tipoParametro.label', default: 'Tipo Parametro')}" />
					
						<g:sortableColumn property="estadoParametro" title="${message(code: 'parametro.estadoParametro.label', default: 'Estado Parametro')}" />
					
						<g:sortableColumn property="eliminado" title="${message(code: 'parametro.eliminado.label', default: 'Eliminado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parametroInstanceList}" status="i" var="parametroInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parametroInstance.id}">${fieldValue(bean: parametroInstance, field: "atributo")}</g:link></td>
					
						<td>${fieldValue(bean: parametroInstance, field: "descripcion")}</td>
					
						<td>${fieldValue(bean: parametroInstance, field: "tipoParametro")}</td>
					
						<td>${fieldValue(bean: parametroInstance, field: "estadoParametro")}</td>
					
						<td>${fieldValue(bean: parametroInstance, field: "eliminado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
                        <div class="nav" role="navigation">
                                <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				<a class="btn btn-warning" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>
				
			
		</div>
			<div class="pagination">
				<g:paginate total="${parametroInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
