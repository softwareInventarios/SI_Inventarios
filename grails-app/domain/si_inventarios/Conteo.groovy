package si_inventarios

class Conteo {
    

    int contado
    Byte eliminado
    
    static belongsTo=[producto:Producto]
    
    static constraints = {
	contado nullable:false
	
        
    }
    static mapping ={
       table 'conteos'
       version false              
     }  
  
}
