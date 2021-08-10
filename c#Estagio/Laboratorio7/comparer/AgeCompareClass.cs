using System.Collections.Generic;

namespace Laboratorio7
{
    public class AgeCompareClass : IComparer<Pessoa>
    {
        int IComparer<Pessoa>.Compare(Pessoa x, Pessoa y)
        {
            return x.Idade.CompareTo(y.Idade);
        }
    }
}