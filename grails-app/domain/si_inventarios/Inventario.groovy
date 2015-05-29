package si_inventarios

class Inventario{
    
    Producto listaDeProductos
    ListaDePrecios listaDePrecios
    Byte eliminado
    
      static belongsTo=[listadeprecios:ListaDePrecios, producto:Producto]
    
    static constraints = {
        listaDeProductos          nullable:true
	listaDePrecios	nullable:true
	
        
    }
    static mapping ={
       table 'inventario'
       version false              
     }  
  
}