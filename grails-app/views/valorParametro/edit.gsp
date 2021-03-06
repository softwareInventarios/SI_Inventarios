<%@ page import="si_inventarios.ValorParametro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'valorParametro.label', default: 'ValorParametro')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="edit-valorParametro" class="content scaffold-edit" role="main">
			<h3>Editar Valor</h3>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${valorParametroInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${valorParametroInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:valorParametroInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${valorParametroInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                        <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link>
				
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
