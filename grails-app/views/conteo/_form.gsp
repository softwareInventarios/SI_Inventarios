<%@ page import="si_inventarios.Conteo" %>



<div class="fieldcontain ${hasErrors(bean: conteoInstance, field: 'contado', 'error')} required">
	<label for="contado">
		<g:message code="conteo.contado.label" default="Contado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="contado" type="number" value="${conteoInstance.contado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: conteoInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="conteo.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${conteoInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: conteoInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="conteo.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${si_inventarios.Producto.list()}" optionKey="id" required="" value="${conteoInstance?.producto?.id}" class="many-to-one"/>
</div>

