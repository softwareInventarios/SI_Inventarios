package si_inventarios

class Producto {
     String referenciaProducto 
     String nombreProducto
    String localizacion
     Long   idLista
     Long   categoria
      int cantidad
     
     byte   eliminado
   
     static hasMany=[ inventario:Inventario, conteo:Conteo,kardex:Kardex]

       
    static mapping ={
        table 'productos'
        version false
    } 
    static constraints = {
       referenciaProducto          nullable:false, maxSize:20 
       nombreProducto       nullable:false,maxSize:150 
       idLista       nullable:true
       categoria  nullable:true
       
       
    }
    
    String  toString(){        
        return nombreProducto        
    } 
}
