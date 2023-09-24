<%-- 
    Document   : paginaRegistro
    Created on : Sep 24, 2023, 11:58:33 PM
    Author     : Emilio
--%>

<%@page import="Negocios.EscribaArchivo"%>
<%@page import="Negocios.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Registro</title>
    </head>
    <body>
        <%
            //Obtener los parametros de peticion:
            
            String nombre = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            String promedio = request.getParameter("promedio");
            
            Alumno alumno = new Alumno(nombre, apellidos, Double.parseDouble(promedio));
            
            ServletContext servletContext = this.getServletContext();
            String path = servletContext.getRealPath("/WEB-INF/Promedios.txt");
            path = path.replace('\\', '/');

//Guardar Archivo:
            EscribaArchivo.Add(alumno, path);
            
        %>
        
        <h2>Tu registro se hizo con éxito!</h2>
        <form action="index.jsp" method="post">
            <input type="submit" value="Nuevo Registro.">
        </form>
    </body>
</html>
