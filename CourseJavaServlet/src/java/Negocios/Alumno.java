package Negocios;

/**
 *
 * @author Emilio
 */
public class Alumno
{
    private String nombre;
    private  String apellidos;
    private  Double promedio;

    public Alumno()
    {
    }

    public Alumno(String nombre, String apellidos, Double promedio)
    {
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.promedio = promedio;
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public String getApellidos()
    {
        return apellidos;
    }

    public void setApellidos(String apellidos)
    {
        this.apellidos = apellidos;
    }

    public Double getPromedio()
    {
        return promedio;
    }

    public void setPromedio(Double promedio)
    {
        this.promedio = promedio;
    }

    @Override
    public String toString()
    {
        return "Alumno{" + "nombre=" + nombre + ", apellidos=" + apellidos + ", promedio=" + promedio + '}';
    }
    
    
}
