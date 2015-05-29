
<%@ page import="si_inventarios.Conteo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'conteo.label', default: 'Conteo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-conteo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-conteo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list conteo">
			
				<g:if test="${conteoInstance?.referenciaProducto}">
				<li class="fieldcontain">
					<span id="referenciaProducto-label" class="property-label"><g:message code="conteo.referenciaProducto.label" default="Referencia Producto" /></span>
					
						<span class="property-value" aria-labelledby="referenciaProducto-label"><g:fieldValue bean="${conteoInstance}" field="referenciaProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conteoInstance?.contado}">
				<li class="fieldcontain">
					<span id="contado-label" class="property-label"><g:message code="conteo.contado.label" default="Contado" /></span>
					
						<span class="property-value" aria-labelledby="contado-label"><g:fieldValue bean="${conteoInstance}" field="contado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conteoInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="conteo.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${conteoInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conteoInstance?.producto}">
				<li class="fieldcontain">
					<span id="producto-label" class="property-label"><g:message code="conteo.producto.label" default="Producto" /></span>
					
						<span class="property-value" aria-labelledby="producto-label"><g:link controller="producto" action="show" id="${conteoInstance?.producto?.id}">${conteoInstance?.producto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conteoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${conteoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
