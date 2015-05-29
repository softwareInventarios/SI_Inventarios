    package si_inventarios
class ValorParametro {
 
   String valor
   String orden
   String estadoValorParametro
   String descValParametro
   Byte eliminado  
       
    static belongsTo=[parametro:Parametro]
   
    static constraints = {
        valor()
        orden(nullable:true)
        descValParametro nullable:true, maxSize: 100
        estadoValorParametro inList:['A','I'] 
        eliminado defaultValue:0
    }
   

   static mapping = {
     table 'valor_parametros'  
     version false     
      }  
      
  String toString(){
     return valor
   }
}
  
