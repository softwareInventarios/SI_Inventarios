package si_inventarios


class Precio {
    
    String referencia 
    double precio 
    Byte eliminado
    
    static belongsTo=[listadeprecios:ListaDePrecios]
    
    static constraints = {
        referencia          nullable:false, maxSize:20
	precio nullable:false
        
    }
   static mapping ={
       table 'precios'
       version false              
     }  
  
  
}