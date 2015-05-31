
<%@ page import="si_inventarios.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
				
		<div id="show-valorParametro" class="content scaffold-show" role="main">
			<h3 align="center">Valor Parametro</h3>
			
			<ol class="list-group">
			
				<g:if test="${valorParametroInstance?.valor}">
				<li class="list-group-item">
					<span id="valor-label" class="property-label"><g:message code="valorParametro.valor.label" default="Valor" /></span>
					
						<span class="badge" aria-labelledby="valor-label"><g:fieldValue bean="${valorParametroInstance}" field="valor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.orden}">
				<li class="list-group-item">
					<span id="orden-label" class="property-label"><g:message code="valorParametro.orden.label" default="Orden" /></span>
					
						<span class="badge" aria-labelledby="orden-label"><g:fieldValue bean="${valorParametroInstance}" field="orden"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.descValParametro}">
				<li class="list-group-item">
					<span id="descValParametro-label" class="property-label"><g:message code="valorParametro.descValParametro.label" default="Desc Val Parametro" /></span>
					
						<span class="badge" aria-labelledby="descValParametro-label"><g:fieldValue bean="${valorParametroInstance}" field="descValParametro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.estadoValorParametro}">
				<li class="list-group-item">
					<span id="estadoValorParametro-label" class="property-label"><g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" /></span>
					
						<span class="badge" aria-labelledby="estadoValorParametro-label"><g:fieldValue bean="${valorParametroInstance}" field="estadoValorParametro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.eliminado}">
				<li class="list-group-item">
					<span id="eliminado-label" class="property-label"><g:message code="valorParametro.eliminado.label" default="Eliminado" /></span>
					
						<span class="badge" aria-labelledby="eliminado-label"><g:fieldValue bean="${valorParametroInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorParametroInstance?.parametro}">
				<li class="list-group-item">
					<span id="parametro-label" class="property-label"><g:message code="valorParametro.parametro.label" default="Parametro" /></span>
                                        
						<span class="badge" aria-labelledby="parametro-label"><g:fieldValue controller="parametro" action="show" id="${valorParametroInstance?.parametro?.id}"/>${valorParametroInstance?.parametro?.encodeAsHTML()}</span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:valorParametroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons"align="center">
					
					<g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
                                        <g:link class="btn btn-warning" action="edit" resource="${valorParametroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                        <g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                        <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link>
                                        
		
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
