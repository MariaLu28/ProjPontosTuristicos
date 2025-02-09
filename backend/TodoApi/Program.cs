using Microsoft.EntityFrameworkCore;
using TodoApi.Controllers;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddControllers();

// Configurando o DbContext para usar o SQL Server
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"))
);

builder.Services.AddEndpointsApiExplorer();  
builder.Services.AddSwaggerGen();  

var app = builder.Build();


app.Urls.Add("http://localhost:5029");  // Definindo a URL de acesso


if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();  // Habilita redirecionamento para HTTPS
app.UseAuthorization();  // Autorização
app.MapControllers();  // Mapeia os controllers

app.Run();  
