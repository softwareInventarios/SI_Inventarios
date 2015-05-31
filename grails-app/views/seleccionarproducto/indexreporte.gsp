<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="si_inventarios.Kardex" %>

<html>
	<head>
		<meta name="layout" content="mainb"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
  </head>
  <body>
 <tr class="fieldcontain ${hasErrors(bean: kardexInstance, field: 'producto', 'error')} required">
	<td><label for="producto">
		<g:message code="kardex.producto.label" default="Producto" />
		<span class="required-indicator"></span>
	</label>
        </td>
        <td>
	<g:select id="producto" name="producto.id" from="${si_inventarios.Producto.list()}" optionKey="id" required="" value="${kardexInstance?.producto?.id}" class="many-to-one"/>
        </td>
    <br><br>
	<form class="Seleccionarproducto" action="${createLink(uri: '/seleccionarproducto/calcularentradas')}" method="POST">			
                <div class="form-group">
                  <button type="submit" class="btn btn-primary"> Generar</button>
                  <g:link class="btn btn-warning" action="index"><g:message code="Volver" args="[entityName]" /></g:link> 
               </div>
		</form>
        
  </body>
</html>
