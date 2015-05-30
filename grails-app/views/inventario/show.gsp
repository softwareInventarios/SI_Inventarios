
<%@ page import="si_inventarios.Inventario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-inventario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list inventario">
			
				<g:if test="${inventarioInstance?.listaDeProductos}">
				<li class="fieldcontain">
					<span id="listaDeProductos-label" class="property-label"><g:message code="inventario.listaDeProductos.label" default="Lista De Productos" /></span>
					
						<span class="property-value" aria-labelledby="listaDeProductos-label"><g:link controller="producto" action="show" id="${inventarioInstance?.listaDeProductos?.id}">${inventarioInstance?.listaDeProductos?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="inventario.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${inventarioInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${inventarioInstance?.producto}">
				<li class="fieldcontain">
					<span id="producto-label" class="property-label"><g:message code="inventario.producto.label" default="Producto" /></span>
					
						<span class="property-value" aria-labelledby="producto-label"><g:link controller="producto" action="show" id="${inventarioInstance?.producto?.id}">${inventarioInstance?.producto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:inventarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${inventarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
