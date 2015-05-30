<%@ page import="si_inventarios.Inventario" %>



<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'listaDeProductos', 'error')} ">
	<label for="listaDeProductos">
		<g:message code="inventario.listaDeProductos.label" default="Lista De Productos" />
		
	</label>
	<g:select id="listaDeProductos" name="listaDeProductos.id" from="${si_inventarios.Producto.list()}" optionKey="id" value="${inventarioInstance?.listaDeProductos?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="inventario.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${inventarioInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: inventarioInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="inventario.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${si_inventarios.Producto.list()}" optionKey="id" required="" value="${inventarioInstance?.producto?.id}" class="many-to-one"/>
</div>

