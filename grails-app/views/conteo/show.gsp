
<%@ page import="si_inventarios.Conteo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'conteo.label', default: 'Conteo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>                  
		<div id="show-conteo" class="content scaffold-show" role="main">
			<h3>Conteo</h3>
			
			<ol class="list-group">
			
				<g:if test="${conteoInstance?.contado}">
				<li class="list-group-item">
					<span id="contado-label" class="property-label"><g:message code="conteo.contado.label" default="Contado" /></span>
					
						<span class="badge" aria-labelledby="contado-label"><g:fieldValue bean="${conteoInstance}" field="contado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conteoInstance?.eliminado}">
				<li class="list-group-item">
					<span id="eliminado-label" class="property-label"><g:message code="conteo.eliminado.label" default="Eliminado" /></span>
					
						<span class="badge" aria-labelledby="eliminado-label"><g:fieldValue bean="${conteoInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${conteoInstance?.producto}">
				<li class="list-group-item">
					<span id="producto-label" class="property-label"><g:message code="conteo.producto.label" default="Producto" /></span>
					
						<span class="badge" aria-labelledby="producto-label"><g:fieldValue controller="producto" action="show" id="${conteoInstance?.producto?.id}"/>${conteoInstance?.producto?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:conteoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons" align="center">
					<g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                        <!--<g:link class="btn btn-warning" action="edit" resource="${conteoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>-->
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link>
			
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
