<%@ page import="si_inventarios.Conteo" %>


<table class="table table-bordered table-hover table-striped table-responsive">
<tr class="fieldcontain ${hasErrors(bean: conteoInstance, field: 'contado', 'error')} required">
    <td><label for="contado">
		<g:message code="conteo.contado.label" default="Contado" />
		<span class="required-indicator">*</span>
	</label>
        </td>
	<td><g:field name="contado" type="number" value="${conteoInstance.contado}" required=""/>
            </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: conteoInstance, field: 'eliminado', 'error')} required">
	<td><label for="eliminado">
		<g:message code="conteo.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
        </td>
	<td><g:field name="eliminado" type="number" value="${conteoInstance.eliminado}" required=""/>
            </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: conteoInstance, field: 'producto', 'error')} required">
	<td><label for="producto">
		<g:message code="conteo.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
        </td>
	<td><g:select id="producto" name="producto.id" from="${si_inventarios.Producto.list()}" optionKey="id" required="" value="${conteoInstance?.producto?.id}" class="many-to-one"/>
            </td>
</tr>
        </table>

