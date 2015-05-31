
<%@ page import="si_inventarios.Kardex" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'kardex.label', default: 'Kardex')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-kardex" class="content scaffold-show" role="main">
			<h3 align="center">Kardex Registrado</h3>
	
			<ol class="list-group">
			
				<g:if test="${kardexInstance?.cantidad}">
				<li class="list-group-item">
					<span id="cantidad-label" class="property-label"><g:message code="kardex.cantidad.label" default="Cantidad" /></span>
					
						<span class="badge" aria-labelledby="cantidad-label"><g:fieldValue bean="${kardexInstance}" field="cantidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.tipoDeMovimiento}">
				<li class="list-group-item">
					<span id="tipoDeMovimiento-label" class="property-label"><g:message code="kardex.tipoDeMovimiento.label" default="Tipo De Movimiento" /></span>
					
						<span class="badge" aria-labelledby="tipoDeMovimiento-label"><g:fieldValue bean="${kardexInstance}" field="tipoDeMovimiento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.fecha}">
				<li class="list-group-item">
					<span id="fecha-label" class="property-label"><g:message code="kardex.fecha.label" default="Fecha" /></span>
					
						<span class="badge" aria-labelledby="fecha-label"><g:fieldValue bean="${kardexInstance}" field="fecha"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.eliminado}">
				<li class="list-group-item">
					<span id="eliminado-label" class="property-label"><g:message code="kardex.eliminado.label" default="Eliminado" /></span>
					
						<span class="badge" aria-labelledby="eliminado-label"><g:fieldValue bean="${kardexInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${kardexInstance?.producto}">
				<li class="list-group-item">
					<span id="producto-label" class="property-label"><g:message code="kardex.producto.label" default="Producto" /></span>
					
						<span class="badge" aria-labelledby="producto-label"><g:fieldValue controller="producto" action="show" id="${kardexInstance?.producto?.id}"/>${kardexInstance?.producto?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:kardexInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons" align="center">
                                        <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-warning" action="edit" resource="${kardexInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link>
	
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
