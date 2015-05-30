
<%@ page import="si_inventarios.Producto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'producto.label', default: 'Producto')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-producto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-producto" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list producto">
			
				<g:if test="${productoInstance?.referenciaProducto}">
				<li class="fieldcontain">
					<span id="referenciaProducto-label" class="property-label"><g:message code="producto.referenciaProducto.label" default="Referencia Producto" /></span>
					
						<span class="property-value" aria-labelledby="referenciaProducto-label"><g:fieldValue bean="${productoInstance}" field="referenciaProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.nombreProducto}">
				<li class="fieldcontain">
					<span id="nombreProducto-label" class="property-label"><g:message code="producto.nombreProducto.label" default="Nombre Producto" /></span>
					
						<span class="property-value" aria-labelledby="nombreProducto-label"><g:fieldValue bean="${productoInstance}" field="nombreProducto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.categoria}">
				<li class="fieldcontain">
					<span id="categoria-label" class="property-label"><g:message code="producto.categoria.label" default="Categoria" /></span>
					
						<span class="property-value" aria-labelledby="categoria-label"><g:fieldValue bean="${productoInstance}" field="categoria"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.localizacion}">
				<li class="fieldcontain">
					<span id="localizacion-label" class="property-label"><g:message code="producto.localizacion.label" default="Localizacion" /></span>
					
						<span class="property-value" aria-labelledby="localizacion-label"><g:fieldValue bean="${productoInstance}" field="localizacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.cantidadinicial}">
				<li class="fieldcontain">
					<span id="cantidadinicial-label" class="property-label"><g:message code="producto.cantidadinicial.label" default="Cantidadinicial" /></span>
					
						<span class="property-value" aria-labelledby="cantidadinicial-label"><g:fieldValue bean="${productoInstance}" field="cantidadinicial"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.precio}">
				<li class="fieldcontain">
					<span id="precio-label" class="property-label"><g:message code="producto.precio.label" default="Precio" /></span>
					
						<span class="property-value" aria-labelledby="precio-label"><g:fieldValue bean="${productoInstance}" field="precio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.conteo}">
				<li class="fieldcontain">
					<span id="conteo-label" class="property-label"><g:message code="producto.conteo.label" default="Conteo" /></span>
					
						<g:each in="${productoInstance.conteo}" var="c">
						<span class="property-value" aria-labelledby="conteo-label"><g:link controller="conteo" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.eliminado}">
				<li class="fieldcontain">
					<span id="eliminado-label" class="property-label"><g:message code="producto.eliminado.label" default="Eliminado" /></span>
					
						<span class="property-value" aria-labelledby="eliminado-label"><g:fieldValue bean="${productoInstance}" field="eliminado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.inventario}">
				<li class="fieldcontain">
					<span id="inventario-label" class="property-label"><g:message code="producto.inventario.label" default="Inventario" /></span>
					
						<g:each in="${productoInstance.inventario}" var="i">
						<span class="property-value" aria-labelledby="inventario-label"><g:link controller="inventario" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${productoInstance?.kardex}">
				<li class="fieldcontain">
					<span id="kardex-label" class="property-label"><g:message code="producto.kardex.label" default="Kardex" /></span>
					
						<g:each in="${productoInstance.kardex}" var="k">
						<span class="property-value" aria-labelledby="kardex-label"><g:link controller="kardex" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:productoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
