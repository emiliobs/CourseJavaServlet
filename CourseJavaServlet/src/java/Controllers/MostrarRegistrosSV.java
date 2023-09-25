package Controllers;

import Negocios.Alumno;
import Negocios.EscribaArchivo;
import Negocios.LeerArchivos;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Emilio
 */
@WebServlet(name = "MostrarRegistrosSV", urlPatterns =
{
    "/MostrarRegistrosSV"
})
public class MostrarRegistrosSV extends HttpServlet
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        
      
        
        try
        {
            ArrayList<Alumno> alumnos = new ArrayList<>();
            int cont = 0;
            String contador;

            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            double average = Double.parseDouble(request.getParameter("average"));

            Alumno alumno = new Alumno(name, lastName, average);

            String path = "C:\\Users\\Emilio\\Documents\\GitHub\\CourseJavaServlet\\CourseJavaServlet\\web\\WEB-INF/Promedio.txt";
             String path1 = "C:\\Users\\Emilio\\Documents\\GitHub\\CourseJavaServlet\\CourseJavaServlet\\web\\WEB-INF/Promedio.txt";
                         path = path.replace('\\','/' );
                         path1 = path1.replace('\\','/' );
            EscribaArchivo.Add(alumno, path);
         //   alumnos= EscribaArchivo.LeeAlumnos(path1);
//            LeerArchivos.clearCont();
//            cont = LeerArchivos.getCont();
//            contador = String.valueOf(cont);

            System.out.println("The files was saved!");

//path = path.replace('\\','/' );
            //Save files:
            // EscribaArchivo.Add(alumno, path);
       //     request.setAttribute("alumnos", alumnos);
//            request.setAttribute("contador", contador);

           
            
            //request.getRequestDispatcher("showDatas.jsp").forward(request, response);

            response.sendRedirect("showDatas.jsp");
        }
        catch (Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }
       

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
      
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        
    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
