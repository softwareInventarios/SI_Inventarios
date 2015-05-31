<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="si_inventarios.Conteo" %>

<html>
	<head>
		<meta name="layout" content="mainb"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
  </head>
  <body>
 
	
		<h3>Reporte Saldo por Producto</h3>
		
	
        
    
	
               
<table class="table table-bordered table-hover table-striped table-responsive">
        <tr>
         <td>Producto</td>
         <td>Cantidad</td>
         <td>Cantidad contada</td>
        </tr>
<g:each in="${productoCompar}" var="product">

<tr> 
<td>  ${product.producto.nombreProducto}</td> 
<td>  ${product.producto.cantidadinicial}</td> 
<td>  ${product.contado}</td> 

</tr>
</g:each>
</table>
             
  </body>
</html>