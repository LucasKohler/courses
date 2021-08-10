using System;

namespace Laboratorio5
{
    public class ContaSalario : Conta
    {
        public static int QUANTIDADE_DE_SAQUES = 2;

        private int saquesMensais;

        public ContaSalario(string titular) : base(titular)
        {
            saquesMensais = 0;
        }

        public override string Id
        {
            get { return $"{Titular} (CS)"; }
        }

        public override void Sacar(decimal valor)
        {
            if (saquesMensais >= QUANTIDADE_DE_SAQUES)
            {
                Console.WriteLine("Limite de saque excedido");
            }
            else
            {
                base.Sacar(valor);
                saquesMensais++;
            }
        }
    }
}