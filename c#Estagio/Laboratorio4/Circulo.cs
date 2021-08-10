namespace Laboratorio4
{
    public class Circulo
    {
        public double CentroX { get; set; }
        public double CentroY { get; set; }
        public double Raio { get; set; }

        public Circulo(double x, double y, double raio)
        {
            CentroX = x;
            CentroY = y;
            Raio = raio;
        }

        public override string ToString()
        {
            return $"Centro: ({CentroX}, {CentroY}), Raio: {Raio}";
        }

        public virtual string Teste()
        {
            return "teste";
        }
    }
}