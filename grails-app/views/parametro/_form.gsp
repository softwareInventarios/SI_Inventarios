<%@ page import="si_inventarios.Parametro" %>


<table class="table table-bordered table-hover table-striped table-responsive">
<tr class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'atributo', 'error')} ">
    <td><label for="atributo">
		<g:message code="parametro.atributo.label" default="Atributo" />
		
	</label>
    </td>
    <td>
	<g:textField name="atributo" value="${parametroInstance?.atributo}"/>
    </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'descripcion', 'error')} ">
	<td><label for="descripcion">
		<g:message code="parametro.descripcion.label" default="Descripcion" />
		
	</label>
        </td>        
	<td><g:textField name="descripcion" value="${parametroInstance?.descripcion}"/>
        </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'tipoParametro', 'error')} ">
	<td><label for="tipoParametro">
		<g:message code="parametro.tipoParametro.label" default="Tipo Parametro" />
		
	</label>
        </td>
	<td><g:select name="tipoParametro" from="${parametroInstance.constraints.tipoParametro.inList}" value="${parametroInstance?.tipoParametro}" valueMessagePrefix="parametro.tipoParametro" noSelection="['': '']"/>
        </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'estadoParametro', 'error')} ">
	<td><label for="estadoParametro">
		<g:message code="parametro.estadoParametro.label" default="Estado Parametro" />
		
	</label></td>
	<td><g:select name="estadoParametro" from="${parametroInstance.constraints.estadoParametro.inList}" value="${parametroInstance?.estadoParametro}" valueMessagePrefix="parametro.estadoParametro" noSelection="['': '']"/>
            </td>
</tr>

<tr class="fieldcontain ${hasErrors(bean: parametroInstance, field: 'eliminado', 'error')} required">
	<td><label for="eliminado">
		<g:message code="parametro.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span>
	</label>
        </td>
	<td><g:field name="eliminado" type="number" value="${parametroInstance.eliminado}" required=""/></td>
</tr>


</table>

