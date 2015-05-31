
<%@ page import="si_inventarios.Parametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'parametro.label', default: 'Parametro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			
		<div id="show-parametro" class="content scaffold-show" role="main">
			<h3 align="center">Parametro Registrado</h3>
			
			<ol class="list-group">
			
				<g:if test="${parametroInstance?.atributo}">
				<li class="list-group-item">
					<span id="atributo-label" class="property-label"><g:message code="parametro.atributo.label" default="Atributo" /></span>
					
						<span class="badge" aria-labelledby="atributo-label"><g:fieldValue bean="${parametroInstance}" field="atributo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.descripcion}">
				<li class="list-group-item">
					<span id="descripcion-label" class="property-label"><g:message code="parametro.descripcion.label" default="Descripcion" /></span>
					
						<span class="badge" aria-labelledby="descripcion-label"><g:fieldValue bean="${parametroInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.tipoParametro}">
				<li class="list-group-item">
					<span id="tipoParametro-label" class="property-label"><g:message code="parametro.tipoParametro.label" default="Tipo Parametro" /></span>
					
						<span class="badge" aria-labelledby="tipoParametro-label"><g:fieldValue bean="${parametroInstance}" field="tipoParametro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.estadoParametro}">
				<li class="list-group-item">
					<span id="estadoParametro-label" class="property-label"><g:message code="parametro.estadoParametro.label" default="Estado Parametro" /></span>
					
						<span class="badge" aria-labelledby="estadoParametro-label"><g:fieldValue bean="${parametroInstance}" field="estadoParametro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.eliminado}">
				<li class="list-group-item">
					<span id="eliminado-label" class="property-label"><g:message code="parametro.eliminado.label" default="Eliminado" /></span>
					
						<span class="badge" aria-labelledby="eliminado-label"><g:fieldValue bean="${parametroInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${parametroInstance?.valorParametro}">
				<li class="list-group-item">
					<span id="valorParametro-label" class="property-label"><g:message code="parametro.valorParametro.label" default="Valor Parametro" /></span>
					
						<g:each in="${parametroInstance.valorParametro}" var="v">
						<span class="badge" aria-labelledby="valorParametro-label"><g:link controller="valorParametro" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:parametroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons" align="center">
                                    <g:link class="btn btn-primary" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
					<g:link class="btn btn-warning" action="edit" resource="${parametroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                       <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link>
				
			
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
