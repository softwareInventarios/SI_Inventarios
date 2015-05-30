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

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="producto.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${productoInstance.eliminado}" required=""/>
</div>

