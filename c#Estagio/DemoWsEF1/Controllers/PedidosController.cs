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
    public async Task<ActionResult<PedidoDTO>> ProcessarCarrinho(CarrinhoDTO carrinho)
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
        return BadRequest("Carrinho vazio");
      }
      pedido.PedidoProdutos = new List<PedidoProduto>();
      foreach (var item in carrinho.Itens)
      {
        var produto = await _database.Produtos.FindAsync(item.CodigoProduto);
        if (produto == null)
        {
          return BadRequest($"Produto não encontrado {item.CodigoProduto}");
        }
        var itemDoPedido = new PedidoProduto();
        itemDoPedido.Produto = produto;
        itemDoPedido.Quantidade = item.Quantidade;
        itemDoPedido.ValorUnitario = produto.Preco;
        pedido.PedidoProdutos.Add(itemDoPedido);
      }

      await _database.Pedidos.AddAsync(pedido);
      await _database.SaveChangesAsync();

      return PedidoDTO.FromPedido(pedido);
    }

    //GET /pedidos?cliente={id}
    [HttpGet]
    public async Task<ActionResult<List<PedidoDTO>>> ListarPedidos(int cliente)
    {
      //_logger.LogInformation($"Listando pedidos do cliente {cliente}");
      var clienteAtual = await _database.Clientes.FindAsync(cliente);
      if (clienteAtual == null)
      {
        return BadRequest("Cliente inexistente");
      }

      //eager load
      var pedidos = await _database.Pedidos
        .Include(p => p.Cliente)
        .Include(p => p.PedidoProdutos)
        .ThenInclude(pp => pp.Produto)
        .Where(p => p.ClienteId == cliente)
        .OrderBy(p => p.DataEmissao)
        .ToListAsync();

      return pedidos.Select(p => PedidoDTO.FromPedido(p)).ToList();
    }
  }
}