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
