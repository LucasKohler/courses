﻿using System;
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
    public class ProdutosController : ControllerBase
    {
        private readonly ILogger<ProdutosController> _logger;
        private readonly BdContext _database;

        public ProdutosController(ILogger<ProdutosController> logger, BdContext database)
        {
            _logger = logger;
            _database = database;
        }

        [HttpGet]
        public IEnumerable<ProdutoDTO> BuscarTodosProdutos()
        {
            return _database.Produtos.Select(ProdutoDTO.FromProduto);
        }

    }
}
