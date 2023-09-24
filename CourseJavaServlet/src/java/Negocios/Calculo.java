package Negocios;

/**
 *
 * @author Emilio
 */
public class Calculo
{
    private double tiempoInicial;
    private double tiempoFinal;
    private double distancia;
    private double velocidad;
    private double tiempoTotal;

    public Calculo()
    {
    }

    public Calculo(String tiempoInicial, String tiempoFinal, String distancia)
    {
               this.tiempoInicial = Double.parseDouble(tiempoInicial);
                this.tiempoInicial = Double.parseDouble(tiempoFinal);
                this.distancia = Double.parseDouble(distancia);
    }

    
    
    
    public void Velocidad()
    {
        this.velocidad  = distancia / (tiempoFinal - tiempoInicial);
    }
    
    public  void TiempoTotal()
    {
        this.tiempoTotal = tiempoFinal - tiempoInicial;
    }
    
    public  Double getVelocidad()
    {
        return this.velocidad;
    }
    
    public  Double getTiempo()
    {
        return  this.tiempoTotal;
    }
    
    
}
