using System;
using System.Collections.Generic;

namespace Laboratorio7
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] lista = { "Julio", "Lucia", "Daniel", "Joao" };
            Console.WriteLine("Array antes da ordenacao");
            for (int i = 0; i < lista.Length; i++)
            {
                Console.Write(lista[i] + " ");
            }
            Console.WriteLine();
            Array.Sort(lista);
            Console.WriteLine("Array depois da ordenacao");
            for (int i = 0; i < lista.Length; i++)
            {
                Console.Write(lista[i] + " ");
            }

            Console.WriteLine();
            Pessoa[] lista2 = {
                new Pessoa("Jose", 28),
                new Pessoa("Ana", 25),
                new Pessoa("Vitor", 17),
            };
            Array.Sort(lista2);
            Console.WriteLine("-------------------------------------------");
            Console.WriteLine("Array depois da ordenacao por nome");
            for (int i = 0; i < lista2.Length; i++)
            {
                Console.Write(lista2[i].Nome + " ");
            }

            Console.WriteLine();
            Array.Sort(lista2, new AgeCompareClass());
            Console.WriteLine("Array depois da ordenacao por idade");
            for (int i = 0; i < lista2.Length; i++)
            {
                Console.Write(lista2[i].Nome + " ");
            }

            Console.WriteLine();
            Console.WriteLine("---------------------------------------------");
            List<Pessoa> pessoas = new List<Pessoa>()
            {
                new Pessoa ("Julio", 30),
                new Pessoa ("Lucia", 25),
                new Pessoa ("Daniel", 20),
                new Pessoa ("Julio", 15)
            };
            Console.WriteLine("Pessoas:");
            foreach (Pessoa pessoa in pessoas)
            {
                Console.WriteLine(pessoa.Nome + " " + pessoa.Idade);
            }
            pessoas.Sort((p1, p2) => p1.Nome.CompareTo(p2.Nome));
            Console.WriteLine("Pessoas ordenadas:");
            foreach (Pessoa pessoa in pessoas)
            {
                Console.WriteLine(pessoa.Nome + " " + pessoa.Idade);
            }
            Console.WriteLine(pessoas.Exists(p => p.Nome == "Julio"));
        }
    }
}
