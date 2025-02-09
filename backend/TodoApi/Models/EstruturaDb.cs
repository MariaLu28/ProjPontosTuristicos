using System.ComponentModel.DataAnnotations;

public class CadastroPT
{
    [Key]  // Definindo a chave primária
    public int Cad_Id { get; set; }

    public string Cad_Nome { get; set; }  
    
    public string Cad_Descricao { get; set; } 
    public string Cad_Localizacao { get; set; }  
    public string Cad_Uf { get; set; }  
    public string Cad_Cidade { get; set; }  
}
