
<%@ page import="si_inventarios.Kardex" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'kardex.label', default: 'Kardex')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-kardex" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-kardex" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list kardex">
			
				<g:if test="${kardexInstance?.cantidad}">
				<li class="fieldcontain">
					<span id="cantidad-label" class="property-label"><g:message code="kardex.cantidad.label" default="Cantidad" /></span>
					
						<span class="property-value" aria-labelledby="cantidad-label"><g:fieldValue bean="${kardexInstance}" field="cantidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.tipoDeMovimiento}">
				<li class="fieldcontain">
					<span id="tipoDeMovimiento-label" class="property-label"><g:message code="kardex.tipoDeMovimiento.label" default="Tipo De Movimiento" /></span>
					
						<span class="property-value" aria-labelledby="tipoDeMovimiento-label"><g:fieldValue bean="${kardexInstance}" field="tipoDeMovimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.fecha}">
				<li class="fieldcontain">
					<span id="fecha-label" class="property-label"><g:message code="kardex.fecha.label" default="Fecha" /></span>
					
						<span class="property-value" aria-labelledby="fecha-label"><g:fieldValue bean="${kardexInstance}" field="fecha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="kardex.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${kardexInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.producto}">
				<li class="fieldcontain">
					<span id="producto-label" class="property-label"><g:message code="kardex.producto.label" default="Producto" /></span>
					
						<span class="property-value" aria-labelledby="producto-label"><g:link controller="producto" action="show" id="${kardexInstance?.producto?.id}">${kardexInstance?.producto?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:kardexInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${kardexInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
