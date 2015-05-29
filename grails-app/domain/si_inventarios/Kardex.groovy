package si_inventarios

class Kardex {
    
    String referenciaProducto 
    String tipoDeMovimiento
    int cantidad
    String fecha 
    Byte eliminado
    
    static belongsTo=[producto:Producto]
    
    static constraints = {
        referenciaProducto          nullable:false, maxSize:20
	cantidad nullable:false
	tipoDeMovimiento nullable:false
	fecha nullable:false
        
    }
    static mapping ={
       table 'kardex'
       version false              
     }  
  
}