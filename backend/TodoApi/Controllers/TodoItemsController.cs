using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
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
        public async Task<ActionResult<IEnumerable<CadastroPT>>> GetCadastros() 
        {
            return await _context.CadastroPTs.ToListAsync();
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
