using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using DemoWsEF1.Models;
using Microsoft.EntityFrameworkCore;
using DemoWsEF1.Dtos;

namespace DemoWsEF1.Controllers
{
  [ApiController]
  [Route("[controller]")]
  public class PedidosController : ControllerBase
  {
    private readonly ILogger<PedidosController> _logger;
    private readonly BdContext _database;

    public PedidosController(ILogger<PedidosController> logger, BdContext database)
    {
      _logger = logger;
      _database = database;
    }

    //POST /pedidos
    [HttpPost]
    public async Task<ActionResult<PedidoDTO>> ProcessarCarrinho(CarrinhoDTO carrinho) // TODO: Implement
    {
      var pedido = new Pedido();
      pedido.DataEmissao = DateTime.Now;
      var cliente = await _database.Clientes.FindAsync(carrinho.IdCliente);
      if (cliente == null)
      {
        return BadRequest("Cliente não encontrado");
      }
      pedido.Cliente = cliente;
      if (carrinho.Itens.Count() == 0)
      {
        return BadRequest("Carrinho Vazio");
      }
      foreach (var item in carrinho.Itens)
      {
        var produto = await _database.Produtos.FindAsync(item.CodigoProduto);
        if (produto == null)
        {
          return BadRequest($"Produto com o gódigo {item.CodigoProduto} não encontrado");
        }
      }

      // await _database.Pedidos.AddAsync(pedido);
      // await _database.SaveChangesAsync();
    }
  }
}