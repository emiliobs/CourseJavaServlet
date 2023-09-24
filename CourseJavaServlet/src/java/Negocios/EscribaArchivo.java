package Negocios;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

/**
 *
 * @author Emilio
 */
public class EscribaArchivo
{
    public  static void Add(Alumno alumno, String path) throws Exception
    {
        File archivo;
        FileWriter fileWriter = null;
        PrintWriter printWriter = null;
        
        try
        {
            archivo = new File(path);
            fileWriter = new FileWriter(archivo, true);
            printWriter = new PrintWriter(fileWriter);
            printWriter.println(alumno.getNombre() + "  , "  + alumno.getApellidos() +  " , "  + alumno.getPromedio());
            
        }
        catch (Exception e)
        {
            System.out.println("Error: " + e.getMessage());
        }
        finally
        {
            try
            {
                if (printWriter != null)
                {
                    printWriter.close();
                }
            }
            catch (Exception e2)
            {
                System.out.println("Error: " + e2.getMessage());
            }
        }
    }
}
