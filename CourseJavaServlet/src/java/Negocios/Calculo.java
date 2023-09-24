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

    public Calculo(double tiempoInicial, double tiempoFinal, double distancia, double velocidad, double tiempoTotal)
    {
        this.tiempoInicial = tiempoInicial;
        this.tiempoFinal = tiempoFinal;
        this.distancia = distancia;
        this.velocidad = velocidad;
        this.tiempoTotal = tiempoTotal;
    }

    public double getTiempoTotal()
    {
        return tiempoTotal;
    }

    public void setTiempoTotal(double tiempoTotal)
    {
        this.tiempoTotal = tiempoTotal;
    }

    public double getTiempoInicial()
    {
        return tiempoInicial;
    }

    public void setTiempoInicial(double tiempoInicial)
    {
        this.tiempoInicial = tiempoInicial;
    }

    public double getTiempoFinal()
    {
        return tiempoFinal;
    }

    public void setTiempoFinal(double tiempoFinal)
    {
        this.tiempoFinal = tiempoFinal;
    }

    public double getDistancia()
    {
        return distancia;
    }

    public void setDistancia(double distancia)
    {
        this.distancia = distancia;
    }

    public double getVelocidad()
    {
        return velocidad;
    }

    public void setVelocidad(double velocidad)
    {
        this.velocidad = velocidad;
    }

    @Override
    public String toString()
    {
        return "Calculo{" + "tiempoInicial=" + tiempoInicial + ", tiempoFinal=" + tiempoFinal + ", distancia=" + distancia + ", velocidad=" + velocidad + ", tiempoTotal=" + tiempoTotal + '}';
    }
    
    
    public void Velocidad()
    {
        velocidad = distancia / (tiempoFinal - tiempoInicial);
    }
    
    public  void TiempoTotal()
    {
        tiempoTotal = tiempoFinal - tiempoInicial;
    }
    
    
}
