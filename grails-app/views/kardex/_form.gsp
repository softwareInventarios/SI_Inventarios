<%@ page import="si_inventarios.Kardex" %>



<div class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'cantidad', 'error')} required">
	<label for="cantidad">
		<g:message code="kardex.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cantidad" type="number" value="${kardexInstance.cantidad}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'tipoDeMovimiento', 'error')} ">
	<label for="tipoDeMovimiento">
		<g:message code="kardex.tipoDeMovimiento.label" default="Tipo De Movimiento" />
		
	</label>
	<g:textField name="tipoDeMovimiento" value="${kardexInstance?.tipoDeMovimiento}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'fecha', 'error')} ">
	<label for="fecha">
		<g:message code="kardex.fecha.label" default="Fecha" />
		
	</label>
	<g:textField name="fecha" value="${kardexInstance?.fecha}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="kardex.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${kardexInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="kardex.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${si_inventarios.Producto.list()}" optionKey="id" required="" value="${kardexInstance?.producto?.id}" class="many-to-one"/>
</div>

