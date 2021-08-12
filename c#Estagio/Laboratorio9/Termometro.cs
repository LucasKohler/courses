namespace Laboratorio9
{
    public class Termometro
    {
        private double valor;

        public Termometro()
        {
            valor = 0.0;
        }

        public double Temperatura
        {
            get { return valor; }
            set { valor = value; }
        }

        virtual public void Aumentar()
        {
            valor += 0.1;
        }

        virtual public void Aumentar(double quantia)
        {
            valor += quantia;
        }

        virtual public void Diminuir()
        {
            valor -= 0.1;
        }

        virtual public void Diminuir(double quantia)
        {
            valor -= quantia;
        }

        override public string ToString()
        {
            return valor.ToString();
        }
    }

    public class TermometroLimite : Termometro
    {
        public delegate void MeuDelegate(string msg, double temperatura);
        public event MeuDelegate LimiteSuperiorEvent;
        public event MeuDelegate VoltouAoNormalEvent;
        private double limiteSuperior;
        private bool disparadoEventoLimiteSuperior;

        public TermometroLimite(double ls)
        {
            limiteSuperior = ls;
            disparadoEventoLimiteSuperior = false;
        }

        public double LimiteSuperior
        {
            get { return limiteSuperior; }
            set { limiteSuperior = value; }
        }

        private void OnLimiteSuperiorEvent()
        {
            // verifica se a temperatura ultrapassou o limite e
            // Verifica se o evento já foi disparado, para não disparar continuamente.
            if ((this.Temperatura > limiteSuperior) && (!disparadoEventoLimiteSuperior))
                // verifica se há tratador
                if (LimiteSuperiorEvent != null)
                {
                    LimiteSuperiorEvent("Atenção: temperatura acima do limite!!!", Temperatura);
                    disparadoEventoLimiteSuperior = true;
                }
        }

        private void OnVoltouAoNormalEvent()
        {
            if ((this.Temperatura <= limiteSuperior) && (disparadoEventoLimiteSuperior))
            {
                disparadoEventoLimiteSuperior = false;
                if (VoltouAoNormalEvent != null)
                {
                    VoltouAoNormalEvent("Atenção: temperatura voltou para baixo do limite superior!!!", Temperatura);
                }
            }
        }

        public override void Aumentar()
        {
            base.Aumentar();
            OnLimiteSuperiorEvent();
        }

        public override void Aumentar(double quantia)
        {
            base.Aumentar(quantia);
            OnLimiteSuperiorEvent();
        }

        public override void Diminuir()
        {
            base.Diminuir();
            OnVoltouAoNormalEvent();
        }

        public override void Diminuir(double quantia)
        {
            base.Diminuir(quantia);
            OnVoltouAoNormalEvent();
        }
    }
}