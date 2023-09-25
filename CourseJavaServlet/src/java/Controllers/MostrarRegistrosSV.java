package Controllers;

import Negocios.Alumno;
import Negocios.EscribaArchivo;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
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
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            double average =  Double.parseDouble(request.getParameter("average"));
            
            Alumno alumno = new Alumno(name, lastName, average);
            
            
             String path = "C:\\Users\\Emilio\\Documents\\GitHub\\CourseJavaServlet\\CourseJavaServlet\\web\\WEB-INF/Promedio.txt";
             EscribaArchivo.Add(alumno, path);
             
             System.out.println("The files was saved!");
            
//path = path.replace('\\','/' );
            
            //Save files:
           // EscribaArchivo.Add(alumno, path);
                    
            
            request.setAttribute("alumno",  alumno);         
       
           request.getRequestDispatcher("/showDatas.jsp").forward(request, response);
           
           //response.sendRedirect("showDatas.jsp");
        }
        catch (Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }
        finally
        {
            
        }
            
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
