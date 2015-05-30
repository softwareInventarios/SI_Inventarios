package si_inventarios

class Producto {
     String referenciaProducto 
     String nombreProducto

      int cantidadinicial
      Long precio
     
     byte   eliminado
   
 
     
     

       
    static mapping ={
        table 'productos'
        version false
    } 
    static constraints = {
       referenciaProducto          nullable:false, maxSize:20 
       nombreProducto       nullable:false,maxSize:150 
        cantidadinicial  nullable:true
        precio  nullable:true
       
       
       
       
    }
    
    String  toString(){        
        return nombreProducto        
    } 
}
