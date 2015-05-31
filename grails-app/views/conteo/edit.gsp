<%@ page import="si_inventarios.Conteo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainb">
		<g:set var="entityName" value="${message(code: 'conteo.label', default: 'Conteo')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
				
		<div id="edit-conteo" class="content scaffold-edit" role="main">
                    <h3 align="center">Editar</h3>
			
			<g:hasErrors bean="${conteoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${conteoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:conteoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${conteoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                        <g:link class="btn btn-warning" action="index"><g:message code="Regresar" args="[entityName]" /></g:link></li>

                                </fieldset>
			</g:form>
		</div>
	</body>
</html>
