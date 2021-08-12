using System;

namespace DemoEventos
{
    class Program
    {
        static void Main(string[] args)
        {
            Contador c = new Contador(3);
            c.LimiteAtingido += DispararAlerme;
            c.Incrementar();
            c.Incrementar();
            c.Incrementar();
        }

        static void DispararAlerme(object font, EventArgs args)
        {
            Console.WriteLine("Alerme disparado");
        }
    }
}
