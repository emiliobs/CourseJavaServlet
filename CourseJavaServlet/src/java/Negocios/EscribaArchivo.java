package Negocios;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author Emilio
 */
public class EscribaArchivo
{

    static ArrayList<Alumno> alumnos = new ArrayList<>();
    
     public static void Add(Alumno alumno, String path) throws Exception
    {
        File archivo;
        FileWriter fileWriter = null;
        PrintWriter printWriter = null;

        try
        {
            archivo = new File(path);
            fileWriter = new FileWriter(archivo, true);
            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
//            printWriter = new PrintWriter(fileWriter);
//            printWriter.println(alumno.getNombre() + "  , "  + alumno.getApellidos() +  " , "  + alumno.getPromedio());
            String datos = alumno.getNombre() + " " + alumno.getApellidos() + " " + alumno.getPromedio();
            bufferedWriter.write(datos);
            bufferedWriter.close();

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

    public static ArrayList<Alumno> LeeAlumnos(String path)
    {
        try
        {
            File archivo = new File(path);
            FileReader lector = new FileReader(archivo);
            BufferedReader bufferLectura = new BufferedReader(lector);

            String linea;
            while ((linea = bufferLectura.readLine()) != null)
            {

                // Dividir la línea en nombre y edad usando una coma como separador
                String[] partes = linea.split(",");
                if (partes.length !=  -1)
                {

                    String nombre = partes[0];
                    String apellidos = partes[1];
                    double promedio = Double.parseDouble(partes[2]);

                    // Crear una instancia de Persona y agregarla a la lista
                    Alumno alumno = new Alumno(nombre, apellidos, promedio);
                    alumnos.add(alumno);
                }

            }

            // Cierra el BufferedReader
            bufferLectura.close();
            return alumnos;

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return null;

    }

   

}
