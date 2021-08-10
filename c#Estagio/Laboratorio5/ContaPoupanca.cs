using System;

namespace Laboratorio5
{
    public class ContaPoupanca : Conta
    {
        private decimal taxaJuros;
        private DateTime dataAniversario;

        public ContaPoupanca(decimal juros, DateTime data, string cpf) : base(cpf)
        {
            taxaJuros = juros;
            dataAniversario = data;
        }

        public decimal Juros
        {
            get { return taxaJuros; }
            set { taxaJuros = value; }
        }

        public string DataAniversario
        {
            get { return dataAniversario.ToShortDateString(); }
        }

        public override string Id
        {
            get { return $"{Titular} (CP)"; }
        }

        public void AdicionarRendimento()
        {
            DateTime hoje = DateTime.Now;
            if (hoje.Day == dataAniversario.Day && hoje.Month == dataAniversario.Month)
            {
                decimal rendimento = this.Saldo * taxaJuros;
                this.Depositar(rendimento);
            }
        }
    }
}