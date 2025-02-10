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
                var query = _context.CadastroPTs
                    .OrderByDescending(c => c.Cad_Id);

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
        public async Task<ActionResult<CadastroPT>> PostCadastro([FromBody] CadastroPT cadastro)
        {
            // Verifica se o modelo recebido é válido
            if (!ModelState.IsValid)
            {
                return BadRequest(new { mensagem = "Erro de validação", erros = ModelState.Values.SelectMany(v => v.Errors).Select(e => e.ErrorMessage) });
            }

            try
            {
                // Verifica se os dados não estão vazios antes de salvar
                if (cadastro == null)
                {
                    return BadRequest(new { mensagem = "Os dados do cadastro não podem ser nulos." });
                }

                _context.CadastroPTs.Add(cadastro);
                await _context.SaveChangesAsync();

                // Retorna um CreatedAtAction apontando para a busca do cadastro recém-criado
                return CreatedAtAction(nameof(GetCadastros), new { id = cadastro.Cad_Id }, cadastro);
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { mensagem = "Erro ao salvar o cadastro", erro = ex.Message });
            }
        }

    }

}