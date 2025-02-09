// // using System.Collections.Generic;
// // using System.Linq;
// // using System.Threading.Tasks;
// // using Microsoft.AspNetCore.Mvc;
// // using Microsoft.EntityFrameworkCore;
// // using TodoApi.Models;
// // namespace TodoApi.Controllers
// // {

// //     [Route("api/[controller]")]
// //     [ApiController]
// //     public class CadastrosController : ControllerBase
// //     {
// //         private readonly AppDbContext _context;

// //         public CadastrosController(AppDbContext context)
// //         {
// //             _context = context;
// //         }

// //         // GET: api/Cadastros
// //         [HttpGet]
// //         public async Task<ActionResult<IEnumerable<CadastroPT>>> FiltrarBuscas([FromQuery] string search)
// //         {
// //             return await _context.CadastroPTs
// //                 .FromSqlRaw("EXEC FiltrarBuscas {0}", search)
// //                 .ToListAsync();
// //         }


// //         // POST: api/Cadastros
// //         [HttpPost]
// //         public async Task<ActionResult<CadastroPT>> PostCadastro(CadastroPT cadastro)
// //         {
// //             _context.CadastroPTs.Add(cadastro);
// //             await _context.SaveChangesAsync();

// //             return CreatedAtAction(nameof(GetCadastros), new { id = cadastro.Cad_Id }, cadastro);
// //         }
// //     }
// // }

// using System.Collections.Generic;
// using System.Linq;
// using System.Threading.Tasks;
// using Microsoft.AspNetCore.Mvc;
// using Microsoft.EntityFrameworkCore;
// using TodoApi.Models;

// namespace TodoApi.Controllers
// {
//     [Route("api/[controller]")]
//     [ApiController]
//     public class CadastrosController : ControllerBase
//     {
//         private readonly AppDbContext _context;

//         public CadastrosController(AppDbContext context)
//         {
//             _context = context;
//         }

//         // GET: api/Cadastros
//         [HttpGet("Cadastros")]
// public IActionResult GetCadastros([FromQuery] string search)
// {
//     // Se não tiver termo de busca, retorna todos
//     if (string.IsNullOrEmpty(search))
//     {
//         var cadastros = _context.Cadastros.ToList();
//         return Ok(cadastros);
//     }

//     // Filtrando com base no parâmetro 'search'
//     var filteredCadastros = _context.Cadastros
//         .Where(c => c.Nome.Contains(search, StringComparison.OrdinalIgnoreCase) ||
//                     c.Descricao.Contains(search, StringComparison.OrdinalIgnoreCase) ||
//                     c.Cidade.Contains(search, StringComparison.OrdinalIgnoreCase) ||
//                     c.Uf.Contains(search, StringComparison.OrdinalIgnoreCase))
//         .ToList();

//     if (filteredCadastros.Count == 0)
//     {
//         return NotFound("Nenhum ponto turístico encontrado.");
//     }

//     return Ok(filteredCadastros);
// }


//         // POST: api/Cadastros
//         [HttpPost]
//         public async Task<ActionResult<CadastroPT>> PostCadastro(CadastroPT cadastro)
//         {
//             _context.CadastroPTs.Add(cadastro);
//             await _context.SaveChangesAsync();

//             return CreatedAtAction(nameof(GetCadastros), new { id = cadastro.Cad_Id }, cadastro);
//         }
//     }
// }

using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoApi.Models;

namespace TodoApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CadastrosController : ControllerBase
    {
        private readonly AppDbContext _context;

        public CadastrosController(AppDbContext context)
        {
            _context = context;
        }

        // GET: api/Cadastros
       [HttpGet]
public IActionResult GetCadastros([FromQuery] string search)
{
    try
    {
        var cadastros = _context.CadastroPTs.ToList(); // Busca todos os cadastros

        // Se não tiver termo de busca retorna todos
        if (string.IsNullOrEmpty(search))
        {
            return Ok(cadastros);
        }

        // Filtrando com base no parâmetro 'search' no cliente
        var filteredCadastros = cadastros
            .Where(c => c.Cad_Nome.Contains(search, StringComparison.OrdinalIgnoreCase) ||
                        c.Cad_Descricao.Contains(search, StringComparison.OrdinalIgnoreCase) ||
                        c.Cad_Cidade.Contains(search, StringComparison.OrdinalIgnoreCase) ||
                        c.Cad_Uf.Contains(search, StringComparison.OrdinalIgnoreCase))
            .ToList();

        if (filteredCadastros.Count == 0)
        {
            return NotFound("Nenhum ponto turístico encontrado.");
        }

        return Ok(filteredCadastros);
    }
    catch (Exception ex)
    {
        return StatusCode(500, $"Erro no servidor: {ex.Message}");
    }
}


        // POST: api/Cadastros
        [HttpPost]
        public async Task<ActionResult<CadastroPT>> PostCadastro(CadastroPT cadastro)
        {
            _context.CadastroPTs.Add(cadastro);  
            await _context.SaveChangesAsync();

            return CreatedAtAction(nameof(GetCadastros), new { id = cadastro.Cad_Id }, cadastro);
        }
    }
}
