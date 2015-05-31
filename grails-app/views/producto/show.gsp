
<%@ page import="si_inventarios.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div id="show-producto" class="content scaffold-show" role="main">
			<h3 align="center">Producto Registrado</h3>
			
			<ol class="property-list producto" class="list-group">
			
				<g:if test="${productoInstance?.referenciaProducto}">
				<li class="list-group-item">
					<span id="referenciaProducto-label" class="property-label"><g:message code="producto.referenciaProducto.label" default="Referencia Producto" /></span>
					
						<span class="badge" aria-labelledby="referenciaProducto-label"><g:fieldValue bean="${productoInstance}" field="referenciaProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.nombreProducto}">
				<li class="list-group-item">
					<span id="nombreProducto-label" class="property-label"><g:message code="producto.nombreProducto.label" default="Nombre Producto" /></span>
					
						<span class="badge" aria-labelledby="nombreProducto-label"><g:fieldValue bean="${productoInstance}" field="nombreProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.cantidadinicial}">
				<li class="list-group-item">
					<span id="cantidadinicial-label" class="property-label"><g:message code="producto.cantidadinicial.label" default="Cantidadinicial" /></span>
					
						<span class="badge" aria-labelledby="cantidadinicial-label"><g:fieldValue bean="${productoInstance}" field="cantidadinicial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.precio}">
				<li class="list-group-item">
					<span id="precio-label" class="property-label"><g:message code="producto.precio.label" default="Precio" /></span>
					
						<span class="badge" aria-labelledby="precio-label"><g:fieldValue bean="${productoInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.eliminado}">
				<li class="list-group-item">
					<span id="eliminado-label" class="property-label"><g:message code="producto.eliminado.label" default="Eliminado" /></span>
					
						<span class="badge" aria-labelledby="eliminado-label"><g:fieldValue bean="${productoInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons" align="center">
                                        <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-warning" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link>
                                        
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
