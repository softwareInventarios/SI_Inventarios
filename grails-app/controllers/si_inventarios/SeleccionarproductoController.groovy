package si_inventarios

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsWebRequest


class SeleccionarproductoController {
    
    
    def index = {  
   
        
       redirect(uri: "/")
        
        
    }

   
    
    def primerReporte={
        render(view: "indexreporte")
    }
    
    
def calcularentradas() {
   def cosa =  params.producto.toString()
//         def query =""" SELECT kardex.cantidad \n\
//                                    FROM `productos` \n\
//                                    inner join `kardex` \n\
//                                    on `productos`.id = `kardex`.producto_id \n\
//                                    WHERE `productos`.`nombre_producto`=`nevera` \n\
//                                    and `kardex`.tipo_de_movimiento="Entrada"
//                   """
        
        def query = Kardex.where {
                            tipoDeMovimiento != "Esntrada"
          
        }
        def q1=query.list {
            Producto.where{
                  nombreProducto==cosa
            }
            
        }
        def productoEle = q1.findAll()
//        def operaciones=Operacion.executeQuery(query) 
        render(view: "reporte1", model: [productoEle: productoEle])

    }
    
     def imprimirTodo(contenedor){
        for (item in contenedor)
        {
            println item.cantidad
            
        }
    }
    
    
    
    
   def calcularSaldo() {
   
        def q1=Producto.where{                
            }
            
        
        def productoEle = q1.findAll()
        
        render(view: "reporte2", model: [productoEle: productoEle])
        
   }
   
     def calcularSaldoGlobal() {
   
        def q1=Producto.where{                
            }
            
        def saldoTotal=0
        def productoEle = q1.findAll()
        for (item in productoEle)
        {
             def operacion = item.cantidadinicial * item.precio
             saldoTotal=saldoTotal + operacion 
            
        }
    
        render(view: "reporte3", model: [saldo: saldoTotal])
        
        
        
   }
   
     def reportecompa() {
   
        def query = Conteo.where {
                            eliminado == 0
          
        }
        def q1=query.list {
            Producto.where{
               
            }
            
        }
        def productoCompar = q1.findAll()
        
        
//        def operaciones=Operacion.executeQuery(query) 
        render(view: "reporte4", model: [productoCompar: productoCompar])
        
   }
    
} 
    
    
    
    
    
    
    
    
    
