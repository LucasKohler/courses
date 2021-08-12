using System;
using System.Collections.Generic;
using System.Linq;

namespace Laboratorio10
{
    class Program
    {
        static void Main(string[] args)
        {
            List<Pessoa> pessoas = new List<Pessoa>
            {
                new Pessoa{Nome = "Ana", DataNascimento = new DateTime(1980, 3, 14), Casada = true},
                new Pessoa{Nome = "Paulo", DataNascimento = new DateTime(1978, 10, 23), Casada = true},
                new Pessoa{Nome = "Maria", DataNascimento = new DateTime(2000, 1, 10), Casada = false},
                new Pessoa{Nome = "Carlos", DataNascimento = new DateTime(1999, 12, 12), Casada = false}
            };
            // var linq1 = from p in pessoas
            //             where p.Casada
            //             select p;
            // foreach (var p in linq1)
            // {
            //     Console.WriteLine(p);
            // }

            // var linq2 = pessoas.Where(p => p.Casada);
            // foreach (var p in linq2)
            // {
            //     Console.WriteLine(p);
            // }

            // var linq3 = from p in pessoas
            //             where p.Casada && p.DataNascimento > new DateTime(2020, 1, 1)
            //             select p.Nome;
            // linq3.ToList().ForEach(Console.WriteLine);

            // var linq4 = pessoas.Where(p => p.Casada).Count();
            // Console.WriteLine(linq4);

            var query1 = from p in pessoas
                         group p by p.Casada into grupoPessoas
                         select new
                         {
                             categoria = grupoPessoas.Key ? "casada" : "solteira",
                             Pessoas = grupoPessoas.ToList(),
                             quantidade = grupoPessoas.Count()
                         };

            foreach (var group in query1)
            {
                Console.WriteLine(group);
                foreach (var x in group.Pessoas)
                {
                    Console.WriteLine(x);
                }
            }

            var query2 = pessoas.OrderBy(p => p.DataNascimento).First();
            var query3 = pessoas.OrderBy(p => p.DataNascimento).Last();
            Console.WriteLine(query2);
            Console.WriteLine(query3);
        }
    }
}
