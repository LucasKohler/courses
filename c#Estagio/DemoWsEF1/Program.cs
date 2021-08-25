using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using DemoWsEF1.Models;
using Microsoft.EntityFrameworkCore;

namespace DemoWsEF1
{
  public class Program
  {
    public static void Main(string[] args)
    {
      CreateHostBuilder(args).Build().Run();
    }

    public static IHostBuilder CreateHostBuilder(string[] args) =>
        Host.CreateDefaultBuilder(args)
            .ConfigureWebHostDefaults(webBuilder =>
            {
              webBuilder.UseStartup<Startup>();
              using (var context = new BdContext())
              {
                context.Database.EnsureCreated();

                context.Produtos.Add(new Produto { ProdutoId = 5, Nome = "Mochila", Preco = 65.00m });

                context.SaveChanges();
              }
            });
  }
}
