<%-- 
    Document   : index
    Created on : Sep 18, 2023, 2:38:26 PM
    Author     : Emilio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>Esta es la página de Inicio</h1>
        <h2>Aqui se piden los datos</h2>
        <p>HOla, por favor introduce la información</p>
        
        <form action="paginaDestino.jsp" method="post">
            <table border="1">
                <tr>
                    <td>
                        Nombre:
                        <input type="text" name="nombre">
                    </td>                    
                </tr>
                  <tr>
                    <td>
                        Minuto Inicial:
                        <input type="text" name="tiempoInicial">
                    </td>                    
                </tr>
                  <tr>
                    <td>
                        Minuto Final:
                        <input type="text" name="tiempoFInal">
                    </td>                    
                </tr>
                  <tr>
                    <td>
                        Distancia Recorrido (en metros):
                        <input type="text" name="distancia">
                    </td>                    
                </tr>
            </table>
            <br>
                        <input type="reset" value="borrar"/> 
                         <input type="submit" value="Enviar">
        </form>
      
    
        
      
    </body>
</html>
