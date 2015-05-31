<%@ page import="si_inventarios.ValorParametro" %>


<table class="table table-bordered table-hover table-striped table-responsive">
    <tr>
        <td><label for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
        </td>
	<td><g:textField name="valor" value="${valorParametroInstance?.valor}"/></td>
</tr>
<tr class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'orden', 'error')} ">
	<td><label for="orden">
		<g:message code="valorParametro.orden.label" default="Orden" />
		
	</label>
        </td>
	<td><g:textField name="orden" value="${valorParametroInstance?.orden}"/></td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'descValParametro', 'error')} ">
	<td><label for="descValParametro">
		<g:message code="valorParametro.descValParametro.label" default="Desc Val Parametro" />
		
	</label>
        </td>
	<td><g:textField name="descValParametro" maxlength="100" value="${valorParametroInstance?.descValParametro}"/></td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'estadoValorParametro', 'error')} ">
	<td><label for="estadoValorParametro">
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" />
		
	</label>
        </td>
	<td><g:select name="estadoValorParametro" from="${valorParametroInstance.constraints.estadoValorParametro.inList}" value="${valorParametroInstance?.estadoValorParametro}" valueMessagePrefix="valorParametro.estadoValorParametro" noSelection="['': '']"/>
        </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'eliminado', 'error')} required">
	<td><label for="eliminado">
		<g:message code="valorParametro.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
        </td>
	<td><g:field name="eliminado" type="number" value="${valorParametroInstance.eliminado}" required=""/></td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'parametro', 'error')} required">
	<td><label for="parametro">
		<g:message code="valorParametro.parametro.label" default="Parametro" />
		<span class="required-indicator">*</span>
	</label>
        </td>
	<td><g:select id="parametro" name="parametro.id" from="${si_inventarios.Parametro.list()}" optionKey="id" required="" value="${valorParametroInstance?.parametro?.id}" class="many-to-one"/>
        </td>
</tr>
</table>

