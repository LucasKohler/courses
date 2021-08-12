using System;

namespace DemoEventos
{
    public class Contador
    {
        public event EventHandler LimiteAtingido;
        public int Valor { get; private set; }
        private int ValorLimite;

        public Contador(int valor)
        {
            ValorLimite = valor;
        }

        public void Incrementar()
        {
            Valor++;
            if (Valor == ValorLimite)
            {
                if (LimiteAtingido != null)
                {
                    LimiteAtingido(this, EventArgs.Empty);
                }
            }
        }
    }
}