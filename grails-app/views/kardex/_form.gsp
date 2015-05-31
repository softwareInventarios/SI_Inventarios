<%@ page import="si_inventarios.Kardex" %>


<table class="table table-bordered table-hover table-striped table-responsive">
<tr class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'cantidad', 'error')} required">
    <td><label for="cantidad">
		<g:message code="kardex.cantidad.label" default="Cantidad" />
		<span class="required-indicator">*</span>
	</label>
    </td>
    <td>
	<g:field name="cantidad" type="number" value="${kardexInstance.cantidad}" required=""/>
    </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'tipoDeMovimiento', 'error')} ">
	<td>
            <label for="tipoDeMovimiento">
		<g:message code="kardex.tipoDeMovimiento.label" default="Tipo De Movimiento" />
		
	</label>
        </td>
            <td>
                 <g:select name="tipoDeMovimiento" from="${['Salida','Entrada']}" required="true" valueMessagePrefix="${kardexInstance?.tipoDeMovimiento}" />
	<!--<g:textField name="tipoDeMovimiento" value="${kardexInstance?.tipoDeMovimiento}"/>-->
        </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'fecha', 'error')} ">
	<td><label for="fecha">
		<g:message code="kardex.fecha.label" default="Fecha" />
		
	</label>
        </td>
            <td>
	<g:textField name="fecha" value="${kardexInstance?.fecha}"/>
            </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'eliminado', 'error')} required">
	<td><label for="eliminado">
		<g:message code="kardex.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
        </td>
        <td>
	<g:field name="eliminado" type="number" value="${kardexInstance.eliminado}" required=""/>
        </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'producto', 'error')} required">
	<td><label for="producto">
		<g:message code="kardex.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
        </td>
        <td>
	<g:select id="producto" name="producto.id" from="${si_inventarios.Producto.list()}" optionKey="id" required="" value="${kardexInstance?.producto?.id}" class="many-to-one"/>
        </td>
</div>
</table>
