package si_inventarios

class Inventario{
    
    Producto listaDeProductos
    Byte eliminado
    
      static belongsTo=[ producto:Producto]
    
    static constraints = {
        listaDeProductos          nullable:true
	
	
        
    }
    static mapping ={
       table 'inventario'
       version false              
     }  
  
}