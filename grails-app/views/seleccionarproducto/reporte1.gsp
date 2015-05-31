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
 
	
		<h3>Reporte Entradas y Salidas</h3>
		
	
        
    
	
               
<table class="table table-bordered table-hover table-striped table-responsive">
        <tr>
         <td>Producto</td>
         <td>Tipo</td>
         <td>Cantidad</td>
        </tr>
<g:each in="${productoEle}" var="hobby">

<tr> 
<td>  ${hobby.producto}</td> 
<td>  ${hobby.tipoDeMovimiento}</td> 
<td>  ${hobby.cantidad}</td> 

</tr>
</g:each>
</table>
           <g:link class="btn btn-warning" action="index"><g:message code="Volver" args="[entityName]" /></g:link>    
  </body>
</html>
