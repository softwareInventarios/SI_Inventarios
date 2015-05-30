<%@ page import="si_inventarios.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'referenciaProducto', 'error')} ">
	<label for="referenciaProducto">
		<g:message code="producto.referenciaProducto.label" default="Referencia Producto" />
		
	</label>
	<g:textField name="referenciaProducto" maxlength="20" value="${productoInstance?.referenciaProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombreProducto', 'error')} ">
	<label for="nombreProducto">
		<g:message code="producto.nombreProducto.label" default="Nombre Producto" />
		
	</label>
	<g:textField name="nombreProducto" maxlength="150" value="${productoInstance?.nombreProducto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'categoria', 'error')} ">
	<label for="categoria">
		<g:message code="producto.categoria.label" default="Categoria" />
		
	</label>
	<g:field name="categoria" type="number" value="${productoInstance.categoria}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'localizacion', 'error')} ">
	<label for="localizacion">
		<g:message code="producto.localizacion.label" default="Localizacion" />
		
	</label>
	<g:textField name="localizacion" value="${productoInstance?.localizacion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'cantidadinicial', 'error')} required">
	<label for="cantidadinicial">
		<g:message code="producto.cantidadinicial.label" default="Cantidadinicial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidadinicial" type="number" value="${productoInstance.cantidadinicial}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'precio', 'error')} ">
	<label for="precio">
		<g:message code="producto.precio.label" default="Precio" />
		
	</label>
	<g:field name="precio" type="number" value="${productoInstance.precio}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'conteo', 'error')} ">
	<label for="conteo">
		<g:message code="producto.conteo.label" default="Conteo" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productoInstance?.conteo?}" var="c">
    <li><g:link controller="conteo" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="conteo" action="create" params="['producto.id': productoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'conteo.label', default: 'Conteo')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="producto.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${productoInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'inventario', 'error')} ">
	<label for="inventario">
		<g:message code="producto.inventario.label" default="Inventario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productoInstance?.inventario?}" var="i">
    <li><g:link controller="inventario" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="inventario" action="create" params="['producto.id': productoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'inventario.label', default: 'Inventario')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'kardex', 'error')} ">
	<label for="kardex">
		<g:message code="producto.kardex.label" default="Kardex" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${productoInstance?.kardex?}" var="k">
    <li><g:link controller="kardex" action="show" id="${k.id}">${k?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="kardex" action="create" params="['producto.id': productoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'kardex.label', default: 'Kardex')])}</g:link>
</li>
</ul>

</div>

