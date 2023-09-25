<%-- 
    Document   : showDatas
    Created on : Sep 25, 2023, 6:10:28?PM
    Author     : Emilio
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Negocios.Alumno"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Show Datas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <%
           
        //   ArrayList<Alumno> alumnos = (ArrayList<Alumno>) request.getAttribute("alumnos");
            // String numeroRegistro = (String) request.getAttribute("contador");
            /// int numRegister = Integer.parseInt(numeroRegistro);
            // Alumno alumno = (Alumno) request.getAttribute("alumno");
%>
        <div class="container ">
            <h1>Sowing Datas!</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Average</th>
                        <th scope="col">Actions</th>
                    </tr>
                </thead>
                <tbody>
                  
                </tbody>
                <tfoot>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Average</th>
                        <th scope="col">Actions</th>
                    </tr>
                </tfoot>
            </table>
        </div>





        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>