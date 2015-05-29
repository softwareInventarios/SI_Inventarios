package si_inventarios



class ListaDePrecios{
    
   
    String descripcion
 
    Byte eliminado
    
    static hasMany=[precio:Precio, inventario:Inventario]
    
    static constraints = {
	descripcion nullable:true
	
	
        
    }
    static mapping ={
       table 'listaDePrecios'
       version false              
     }  
  
}