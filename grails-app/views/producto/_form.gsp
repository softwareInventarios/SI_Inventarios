<%@ page import="si_inventarios.Producto" %>


<table class="table table-bordered table-hover table-striped table-responsive">
    <tr>
	
        <td><g:message code="producto.referenciaProducto.label" default="Referencia Producto" /></td>
		
	
        <td><g:textField name="referenciaProducto" maxlength="20" value="${productoInstance?.referenciaProducto}"/></td>

</tr>
<tr>
	<td><g:message code="producto.nombreProducto.label" default="Nombre Producto" /></td>
		
	
	<td><g:textField name="nombreProducto" maxlength="150" value="${productoInstance?.nombreProducto}"/></td>

</tr>
<tr>
    <td><g:message code="producto.cantidadinicial.label" default="Cantidadinicial" />
		<span class="required-indicator">*</span></td>
	
    <td><g:field name="cantidadinicial" type="number" value="${productoInstance.cantidadinicial}" required=""/></td>

</tr>
<tr>
		<td><g:message code="producto.precio.label" default="Precio" /></td>
		
	
	<td><g:field name="precio" type="number" value="${productoInstance.precio}"/></td>

</tr>
<tr>
		<td><g:message code="producto.eliminado.label" default="Eliminado" />
		<span class="required-indicator">*</span></td>
	
	<td><g:field name="eliminado" type="number" value="${productoInstance.eliminado}" required=""/></td>
</tr>
</table>
