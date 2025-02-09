using Microsoft.EntityFrameworkCore;
using TodoApi.Models;

public class AppDbContext : DbContext
{
    public DbSet<CadastroPT> CadastroPTs { get; set; }

    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    // Método para configurar a conexão com o banco de dados
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        if (!optionsBuilder.IsConfigured)
        {
            optionsBuilder.UseSqlServer("Server=MALU;Database=MeuBancoPT;Trusted_Connection=True;TrustServerCertificate=True;");
        }
    }
}
