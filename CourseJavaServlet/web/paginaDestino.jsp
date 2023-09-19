<%-- 
    Document   : paginaDestino
    Created on : Sep 18, 2023, 9:24:32 PM
    Author     : Emilio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Destino JSP</title>
    </head>
    <body>
        <%
             //Este es un scriplet
             // Es código en java que captura los parámero enviados
             // en el código "request"
             
          String nombre = request.getParameter("nombre");
          String color =  request.getParameter("color");
          String mail = request.getParameter("mail");
          
        %>
        
        <h1>Esta es la págona destino</h1>
        <h2>Aqui se despliegan los datos que se recibieron</h2>
        <p>Tus datos son los siguintes</p>
        <table border="1">
            <tr>
                <td>Te llamas: </td>
                <td><%= nombre %></td>
            </tr>
             <tr>
                <td>Tu color favorikto es: </td>
                <td><%= color %></td>
            </tr>
            <tr>
                <td>Y tu correo es : </td>
                <td><%= mail %></td>
            </tr>
        </table>
            <form action="index.jsp" method="post">
                <input type="submit" value="Regresar">
            </form>
\    </body>
</html>
