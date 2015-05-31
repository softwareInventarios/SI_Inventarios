<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Autrenticacion</title>
            
    <!-- Bootstrap Core CSS -->
     <link  href="${resource(dir: 'css', file: 'bootstrap.min.css')}" rel="stylesheet" />
   

    <!-- Custom CSS -->
          <link  href="${resource(dir: 'css', file: 'sb-admin.css')}" rel="stylesheet" />

   

    <!-- Morris Charts CSS -->
           <link  href="${resource(dir: 'css/plugins', file: 'morris.css')}" rel="stylesheet" />
   

    <!-- Custom Fonts -->
                      <link  href="${resource(dir: 'font-awesome/css', file: 'font-awesome.min.css')}" rel="stylesheet" />

  

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->	
    <style>
      body {
       padding-top:40px;
         padding-bootom:40px;
      
      }
      .login {
      max-width:330px;
      padding:15px;
      margin:0 auto;
      } 
      #avatar {
         width 100px;
         height:100px;
         margin:0px auto 10px;
         display:block;
         border-radius:50px;
      
      }
       #contenedor {       
       max-width :340px;    
        -webkit-box-shadow: 0px 0px 18px 0px rgba(48,50,50,0.48);
        -moz-shadow:        0px 0px 18px 0px rgba(48,50,50,0.48);
        box-shadow :        0px 0px 18px 0px rgba(48,50,50,0.48);
        border-radius: 6%;
       }
    </style>
    </head>
    <body>
        <div class="container well " id="contenedor">
          <div class="row">
           <img src="http://localhost:8080/cuccrm/images/avatar.png" id="avatar" >
          </div>
          <form class="login" action="autenticacion" method="POST">
              <div class="form-group">
                   <input  type="text" class="form-control"  name="usuario" required  placeholder="Usuario">
              </div>
               <div class="form-group">
                   <div class="input-group">
                     <input  type="password" class="form-control"  name="password" required  placeholder="Contraseña">
                     <span id="botoncito" action="hide" class="input-group-addon glyphicon  glyphicon-eye-close"></span>
                   </div>
              </div>
              <div class="form-group">
                  <button type="submit" class="btn btn-lg btn-primary btn-block"   > Iniciar Sesión</buttom>
               </div>
               <g:hiddenField name="estado"  value="${estado}"/>
               <g:hiddenField name="uriAnterior"  value="${uriAnterior}"/>
          </form>
          <p style="color:#ff0000;">
              ${flash.message}
           </p>
        </div>
          <!-- jQuery -->
                                        

     <script src="${resource(dir: 'js', file: 'jquery.js')}"></script>	
    
    <!-- Bootstrap Core JavaScript -->
     <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>	
    

    <!-- Morris Charts JavaScript -->
          <script src="${resource(dir: 'js/plugins/morris', file: 'raphael.min.js')}"></script>
         <script src="${resource(dir: 'js/plugins/morris', file: 'morris.min.js')}"></script>	
         <script src="${resource(dir: 'js/plugins/morris', file: 'morris-data.js')}"></script>
          <script>
           $(document).on('ready', function(){
             $('#botoncito').on('click', function(e){
                e.preventDefault();
                var actual=$(this).attr('action');
                if (actual=='hide') {
                  $(this).prev().attr('type','text');
                  $(this).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close').attr('action',"show");
                }
                if (actual=='show') {
                  $(this).prev().attr('type','password');
                  $(this).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open').attr('action',"hide");
                }
             })  
             })                     
           
          </script>
    </body>
</html>
