<%@ page import="si_inventarios.ValorParametro" %>



<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'valor', 'error')} ">
	<label for="valor">
		<g:message code="valorParametro.valor.label" default="Valor" />
		
	</label>
	<g:textField name="valor" value="${valorParametroInstance?.valor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'orden', 'error')} ">
	<label for="orden">
		<g:message code="valorParametro.orden.label" default="Orden" />
		
	</label>
	<g:textField name="orden" value="${valorParametroInstance?.orden}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'descValParametro', 'error')} ">
	<label for="descValParametro">
		<g:message code="valorParametro.descValParametro.label" default="Desc Val Parametro" />
		
	</label>
	<g:textField name="descValParametro" maxlength="100" value="${valorParametroInstance?.descValParametro}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'estadoValorParametro', 'error')} ">
	<label for="estadoValorParametro">
		<g:message code="valorParametro.estadoValorParametro.label" default="Estado Valor Parametro" />
		
	</label>
	<g:select name="estadoValorParametro" from="${valorParametroInstance.constraints.estadoValorParametro.inList}" value="${valorParametroInstance?.estadoValorParametro}" valueMessagePrefix="valorParametro.estadoValorParametro" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="valorParametro.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${valorParametroInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: valorParametroInstance, field: 'parametro', 'error')} required">
	<label for="parametro">
		<g:message code="valorParametro.parametro.label" default="Parametro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parametro" name="parametro.id" from="${si_inventarios.Parametro.list()}" optionKey="id" required="" value="${valorParametroInstance?.parametro?.id}" class="many-to-one"/>
</div>

