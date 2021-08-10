namespace Laboratorio4
{
    public class CirculoColorido : Circulo
    {
        public string Cor { get; set; }
        public CirculoColorido(double x, double y, double raio) : base(x, y, raio)
        {
            Cor = "vermelho";
        }

        public override string ToString()
        {
            return base.ToString() + $" | Cor: {Cor}";
        }

        public override string Teste()
        {
            return base.Teste();
        }
    }
}