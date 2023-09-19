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
          
            String transporte = request.getParameter("transporte");
            String ciudad = request.getParameter("ciudad");
            String bosque = request.getParameter("bosque");
            String playa = request.getParameter("playa");
          
        %>
        
        <h1>Esta es la página de destino</h1>
        <h2>Aquí se despliegan los datos que recibieron</h2>
        <table border="1">
            <tr>
                <td>Tu Transporte preferido es el: <%=  transporte %></td>
                
            </tr>
        </table>
                <p>Eligeste los siguientes destinos: <br></p>
                <%
                      if (ciudad != null)
                 {%>
                   Ciudad,
                              
                <%
                    }
                %> 
                
                  <%
                      if (bosque != null)
                 {%>
                   bosque,
                              
                <%
                    }
                %> 
                
                  <%
                      if (playa != null)
                 {%>
                   Playa,
                              
                <%
                    }
                %> 
        
        
        <hr/>
        
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
