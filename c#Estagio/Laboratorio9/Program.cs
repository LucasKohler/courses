using System;

namespace Laboratorio9
{
    class Program
    {
        static void Main(string[] args)
        {
            // inicializa o termometro e mostra seu valor
            TermometroLimite term = new TermometroLimite(5);
            term.Aumentar();
            Console.WriteLine(term.ToString());

            // adiciona um tratador ao evento LimiteSuperiorEvent
            term.LimiteSuperiorEvent += new TermometroLimite.MeuDelegate(TrataLimiteSuperior);
            term.VoltouAoNormalEvent += new TermometroLimite.MeuDelegate(TrataLimiteSuperior);

            // aumentar a temperatura além do limite
            term.Aumentar(6);
            term.Diminuir();
            term.Diminuir();
            term.Diminuir(1);
        }

        private static void TrataLimiteSuperior(string msg, double temp)
        {
            Console.WriteLine(msg);
            Console.WriteLine(temp);
        }
    }
}
