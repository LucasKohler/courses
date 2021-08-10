using System.Drawing;

namespace Laboratorio4
{
    class CirculoColoridoPreenchido : CirculoColorido
    {
        private Color corPreenchida;
        public CirculoColoridoPreenchido(double x, double y, double r, Color color) : base(x, y, r)
        {
            corPreenchida = color;
        }

        public override string ToString()
        {
            return base.ToString() + $"Cor de preenchimento: {corPreenchida}";
        }
    }
}