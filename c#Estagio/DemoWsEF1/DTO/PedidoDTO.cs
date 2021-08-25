using System;
using System.Collections.Generic;
using DemoWsEF1.Models;
using System.Linq;

namespace DemoWsEF1.Dtos
{
  public class PedidoDTO
  {
    public int Codigo { get; set; }
    public DateTime DataEmissao { get; set; }
    public string NomeCliente { get; set; }
    public string EmailCliente { get; set; }
    public IEnumerable<PedidoItemDTO> Itens { get; set; }
    public decimal ValorTotal { get; set; }

    public static PedidoDTO FromPedido(Pedido pedido)
    {
      return new PedidoDTO
      {
        Codigo = pedido.PedidoId,
        DataEmissao = pedido.DataEmissao,
        NomeCliente = pedido.Cliente.Nome,
        EmailCliente = pedido.Cliente.Email,
        Itens = pedido.PedidoProdutos.Select(p =>
          new PedidoItemDTO
          {
            CodigoProduto = p.ProdutoId,
            Nome = p.Produto.Nome,
            Quantidade = p.Quantidade
          }
        ).ToList(),
        ValorTotal = pedido.PedidoProdutos.Sum(p => p.Quantidade * p.ValorUnitario)
      };
    }
  }

  public class PedidoItemDTO
  {
    public int CodigoProduto { get; set; }
    public string Nome { get; set; }
    public int Quantidade { get; set; }
  }
}