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
 
	
		<h3 align="center">Reporte Saldo por Producto</h3>
		

<h3>El saldo es ${saldo}</h3>

           <g:link class="btn btn-warning" action="index"><g:message code="Volver" args="[entityName]" /></g:link>    
  </body>
</html>
