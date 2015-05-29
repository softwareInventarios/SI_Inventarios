package si_inventarios

class Conteo {
    
    String referenciaProducto 
    int contado
    Byte eliminado
    
    static belongsTo=[producto:Producto]
    
    static constraints = {
        referenciaProducto          nullable:false, maxSize:20
	contado nullable:false
	
        
    }
    static mapping ={
       table 'conteos'
       version false              
     }  
  
}
