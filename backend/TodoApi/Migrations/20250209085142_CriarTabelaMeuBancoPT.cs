using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace TodoApi.Migrations
{
    /// <inheritdoc />
    public partial class CriarTabelaMeuBancoPT : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "CadastroPTs",
                columns: table => new
                {
                    Cad_Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Cad_Nome = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Cad_Descricao = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Cad_Localizacao = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Cad_Uf = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Cad_Cidade = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CadastroPTs", x => x.Cad_Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "CadastroPTs");
        }
    }
}
