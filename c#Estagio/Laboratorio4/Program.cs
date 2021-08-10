using System;
using System.Drawing;
using System.Collections.Generic;

namespace Laboratorio4
{
    class Program
    {
        static void Main(string[] args)
        {
            Circulo c1 = new Circulo(1.5, 2, 3);
            c1.Raio = 10;
            Console.WriteLine(c1.ToString());
            Circulo c2 = new Circulo(2, 3, 4);
            Console.WriteLine(c1 == c2);
            Console.WriteLine(c1.Equals(c2));

            CirculoColorido c3 = new CirculoColorido(1, 2, 3);
            Console.WriteLine(c3);

            Circulo c4 = new CirculoColorido(3, 2, 1);
            Console.WriteLine(c4);
            Console.WriteLine(c4.Teste());

            CirculoColorido cc = new CirculoColorido(0, 1, 2);
            Console.WriteLine($"x = {cc.CentroX}, y = {cc.CentroY}");

            CirculoColorido ccp = new CirculoColoridoPreenchido(1, 2, 3, Color.AliceBlue);
            Console.WriteLine(ccp);

            List<Circulo> arrayCirculos = new List<Circulo> { c2, c3, cc };
            foreach (Circulo circulo in arrayCirculos)
            {
                Console.WriteLine(circulo);
            }
        }
    }
}
