<%@ page import="si_inventarios.Parametro" %>



<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'atributo', 'error')} ">
	<label for="atributo">
		<g:message code="parametro.atributo.label" default="Atributo" />
		
	</label>
	<g:textField name="atributo" value="${parametroInstance?.atributo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="parametro.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${parametroInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'tipoParametro', 'error')} ">
	<label for="tipoParametro">
		<g:message code="parametro.tipoParametro.label" default="Tipo Parametro" />
		
	</label>
	<g:select name="tipoParametro" from="${parametroInstance.constraints.tipoParametro.inList}" value="${parametroInstance?.tipoParametro}" valueMessagePrefix="parametro.tipoParametro" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'estadoParametro', 'error')} ">
	<label for="estadoParametro">
		<g:message code="parametro.estadoParametro.label" default="Estado Parametro" />
		
	</label>
	<g:select name="estadoParametro" from="${parametroInstance.constraints.estadoParametro.inList}" value="${parametroInstance?.estadoParametro}" valueMessagePrefix="parametro.estadoParametro" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'eliminado', 'error')} required">
	<label for="eliminado">
		<g:message code="parametro.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="eliminado" type="number" value="${parametroInstance.eliminado}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'valorParametro', 'error')} ">
	<label for="valorParametro">
		<g:message code="parametro.valorParametro.label" default="Valor Parametro" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${parametroInstance?.valorParametro?}" var="v">
    <li><g:link controller="valorParametro" action="show" id="${v.id}">${v?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="valorParametro" action="create" params="['parametro.id': parametroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'valorParametro.label', default: 'ValorParametro')])}</g:link>
</li>
</ul>

</div>

