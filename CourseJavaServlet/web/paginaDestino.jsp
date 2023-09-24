<%-- 
    Document   : paginaDestino
    Created on : Sep 18, 2023, 9:24:32 PM
    Author     : Emilio
--%>

<%@page import="Negocios.Calculo"%>
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
           
          //String nombre = request.getParameter("nombre");
          ///String color =  request.getParameter("color");
          //String mail = request.getParameter("mail");
          
           // String transporte = request.getParameter("transporte");
            //String ciudad = request.getParameter("ciudad");
            //String bosque = request.getParameter("bosque");
           // String playa = request.getParameter("playa");
            
//Extraccion de los parametros recibidos:
        String idioma = request.getParameter("idioma");
        String[] lenguajeSeleccionado = request.getParameterValues("lenguajes");
        
        String textArea1 = request.getParameter("area1");

        String textArea = request.getParameter("area2");
        
            String nombre = request.getParameter("nombre");
            String timepoInicial = request.getParameter("tiempoInicial");
            String timepoFinal = request.getParameter("tiempoFInal");
            String distancoa = request.getParameter("distancia");
            double velocidad, tiempo;
            
            Calculo calculo = new  Calculo(timepoInicial, timepoFinal, distancoa);
            calculo.Velocidad();
            velocidad = calculo.getVelocidad();
            calculo.TiempoTotal();
            tiempo = calculo.getTiempo();
           
        %>
        
        
        <h2>  Resultados </h2>
        <p><%= nombre %></p>
        <table border="1">
            <tr>
                <td>
                    Tu tiempo total fue: <%=  tiempo %> minutos
                </td>
            </tr>
            <tr>
                <td>
                    y tu Velocidad: <%=  velocidad %> metros/minutos
                </td>
            </tr>
            <br>
            <form action="index.jsp" method="post">
                <input type="submit" value="Regresar" />
            </form>
        </table>
        <hr>
        
\    </body>
</html>
