package si_inventarios

class Producto {
     String referenciaProducto 
     String nombreProducto
    String localizacion
     Long   categoria
      int cantidadinicial
      Long precio
     
     byte   eliminado
   
     static hasMany=[ inventario:Inventario, conteo:Conteo,kardex:Kardex]

       
    static mapping ={
        table 'productos'
        version false
    } 
    static constraints = {
       referenciaProducto          nullable:false, maxSize:20 
       nombreProducto       nullable:false,maxSize:150 
       categoria  nullable:true
        localizacion  nullable:true
        cantidadinicial  nullable:true
        precio  nullable:true
       
       
       
       
    }
    
    String  toString(){        
        return nombreProducto        
    } 
}
