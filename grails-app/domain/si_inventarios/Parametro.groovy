package si_inventarios


class Parametro {
    
    String atributo 
    String descripcion
    String tipoParametro
    String estadoParametro 
    Byte eliminado
    
    static hasMany=[valorParametro:ValorParametro]
    static constraints = {
        
        atributo()
        descripcion()
        tipoParametro inList: ['S','U']
        estadoParametro inList:['A','I'] 
        eliminado defaultValue:0
    }
    static mapping ={
       table 'parametros'
       version false              
     }  
  String toString(){
  return descripcion
}
}