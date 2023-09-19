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
        <h1>Esta es la Pagina de Inicio.</h1>
        <h2>Aqui se piden los datos</h2>
        <p>Hola, por favor introduce la información</p>
        <hr/>
        
        <form action="paginaDestino.jsp" method="post">
         
        </form>
        
        
        <form action="paginaDestino.jsp" method="post">
            
                <h1>Area de Texto</h1>
        <p>Se puede desplegar el texto por default</p>
        <textarea name="area1" rows="20" cols="30">
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
        </textarea>       
        <p>
        <p>O puede ser un area en blanco para caoturar texto</p>
        <textarea name="area2" rows="4" cols="60"></textarea>
            <hr>
               <input type="submit" value="Enviar">
            <p>Idioma Natal: <br> 
            <select name="idioma">
                <option>Ingles</option>
                <option>Frances</option>
                <option>Aleman</option>
            </select>
                </p>
                <br>
                <p>Selecciones tu lenguaje de Programación<br>
                    (ctrl-click para eligir varias opciones.)<br>
                  
                  <select name="lenguajes" multiple="">
                      <option Selected>Java</option>
                      <option>C++</option>
                      <option>Basic</option>
                      <option>C#</option>
                      <option>Python</option>
                      <option>Pascal</option>
                  </select>
                </p>
                <br>
                
                <input type="submit" value="Enviar">
        </form>
        <hr/>
        
     
        <form action="paginaDestino.jsp" method="post">
            <p>Elige que tranposte prefiere</p>
            <input type="radio" name="transporte" value="Automovil" checked> Coche
            <input type="radio" name="transporte" value="Avion" checked> Avion
            <input type="radio" name="transporte" value="Camion" checked> Camion
            
            <p>Cuále son tus destinos favoritos?</p>
            <input type="checkbox" name="ciudad" value="ciudad" checked> Ciudad
            <input type="checkbox" name="bosque" value="bosque" checked> Bosque
            <input type="checkbox" name="playa" value="playa" checked> Playa
            <br/> 
            <input type="submit" value="Enviar">
        
        </form> 
        
        <hr/>
        
        <form action="paginaDestino.jsp" method="post">
            <table  cellspacing='3' cellpading='3' border='1'>
                <thead>
                <th>Nombre</th>
                <th>Color Favorito</th>
                <th>Correo</th>
                </head>
                <tbody>
                    <tr>
                        <td aling='right'>Nombre: </td>
                        <td><input  type="text" name="nombre"></td>
                    </tr>
                     <tr>
                        <td aling='right'>Color Favorito:  </td>
                        <td><input  type="text" name="color"></td>
                    </tr>
                     <tr>
                        <td aling='right'>Correo: </td>
                        <td><input  type="text" name="mail"></td>
                    </tr>
                     <tr>
                         <td>
                          <input  type="reset" value="Borrar">
                         <input  type="submit" name="Enviar">
                         </td>
                    </tr>
                </tbody>
                <tfoot>
                  <th>Nombre</th>
                <th>Color Favorito</th>
                <th>Correo</th>
                </footer>
            </table>
        </form>
    </body>
</html>
