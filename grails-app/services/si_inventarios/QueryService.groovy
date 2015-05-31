package si_inventarios

import grails.transaction.Transactional

@Transactional
class QueryService {

    def entradasproducto( nombre) {
        
        def query =""" SELECT kardex.cantidad \n\
                                    FROM `productos` \n\
                                    inner join `kardex` \n\
                                    on `productos`.id = `kardex`.producto_id \n\
                                    WHERE `productos`.`nombre_producto`=`${nombre}` \n\
                                    and `kardex`.tipo_de_movimiento="Entrada"
                   """
        def operaciones=Operacion.executeQuery(query) 
        return operaciones
    }
       def salidasproducto( nombre) {
        
        def query =""" SELECT kardex.cantidad \n\
                                    FROM `productos` \n\
                                    inner join `kardex` \n\
                                    on `productos`.id = `kardex`.producto_id \n\
                                    WHERE `productos`.`nombre_producto`=`${nombre}` \n\
                                    and `kardex`.tipo_de_movimiento="Salida"
                   """
        def operaciones=Operacion.executeQuery(query) 
        return operaciones
    }
    
    def productos() {
        
        def query =""" SELECT `productos`.`nombre_producto` \n\
                                    FROM `productos` \n\
                                  """
        def operaciones=Operacion.executeQuery(query) 
        return operaciones
    }
    
      def  valorproducto(nombre) {
        
        def query =""" SELECT `productos`.`nombre_producto` \n\
                                    FROM `productos` \n\\n\
                                    WHERE `productos`.`nombre_producto`=`${nombre}`
                                  """
        def operaciones=Operacion.executeQuery(query) 
        return operaciones
    }
    
}
