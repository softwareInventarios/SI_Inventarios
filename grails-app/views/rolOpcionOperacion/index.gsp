
<%@ page import="cuccrm.RolOpcionOperacion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'rolOpcionOperacion.label', default: 'RolOpcionOperacion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-rolOpcionOperacion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-rolOpcionOperacion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
						<th><g:message code="rolOpcionOperacion.rol.label" default="Rol" /></th>
                                                
						
					
						<g:sortableColumn property="eliminado" title="${message(code: 'rolOpcionOperacion.eliminado.label', default: 'Eliminado')}" />
					
						<th><g:message code="rolOpcionOperacion.opcion.label" default="Opcion" /></th>
					
						<th><g:message code="rolOpcionOperacion.operacion.label" default="Operacion" /></th>
					        <g:sortableColumn property="estadoRolOpcionOperacion" title="${message(code: 'rolOpcionOperacion.estadoRolOpcionOperacion.label', default: 'Estado Rol Opcion Operacion')}" />
						
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${rolOpcionOperacionInstanceList}" status="i" var="rolOpcionOperacionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${rolOpcionOperacionInstance.id}">${fieldValue(bean: rolOpcionOperacionInstance, field: "rol")}</g:link></td>
                                            
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "eliminado")}</td>
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "opcion")}</td>
					
						<td>${fieldValue(bean: rolOpcionOperacionInstance, field: "operacion")}</td>
					       <td>${fieldValue(bean: rolOpcionOperacionInstance, field: "estadoRolOpcionOperacion")}</td>
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rolOpcionOperacionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
