using System;
using System.Collections.Generic;

namespace Laboratorio5
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Conta> lista = new List<Conta>();
            lista.Add(new ContaPoupanca(0.01M, new DateTime(), "71442014091"));
            lista.Add(new ContaSalario("03126783040"));
            lista[1].Depositar(800);
            lista[1].Sacar(10);
            lista[1].Sacar(10);
            lista[1].Sacar(10);
            lista[1].Sacar(10);
            foreach (Conta conta in lista)
            {
                Console.WriteLine($"Id: {conta.Id} Saldo: {conta.Saldo}");
            }
        }
    }
}
