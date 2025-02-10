using System.ComponentModel.DataAnnotations;

namespace TodoApi.Models
{
    public class CadastroPT
    {
        [Key]  // Definindo a chave primária
        public int Cad_Id { get; set; }

        [MaxLength(100)]
        public string Cad_Nome { get; set; }

        [MaxLength(100)]
        public string Cad_Descricao { get; set; }

        [MaxLength(100)]
        public string Cad_Localizacao { get; set; }

        [MaxLength(2)]
        public string Cad_Uf { get; set; }

        [MaxLength(50)]
        public string Cad_Cidade { get; set; }
    }
}
