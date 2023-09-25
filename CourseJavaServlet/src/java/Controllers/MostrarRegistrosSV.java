package Controllers;

import Negocios.Alumno;
import java.io.IOException;
import java.io.PrintWriter;
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
            String name = request.getParameter("name");
            String lastName = request.getParameter("lastName");
            double average =  Double.parseDouble(request.getParameter("average"));
            
            Alumno alumno = new Alumno(name, lastName, average);
            
            request.setAttribute("alumno",  alumno);         
       
           request.getRequestDispatcher("showDatas.jsp").forward(request, response);
           
           //response.sendRedirect("showDatas.jsp");
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
