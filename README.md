<!-- PROJPONTOSTURISTICOS é um sistema web cuja funcionalidade é cadastrar e buscar pontos turisticos do país
A aplicação é construída com HTML, CSS, JavaScript no front-end e .NET (C#) para o back-end.

*Tecnologias utilizadas:

HTML: Estrutura do conteúdo da página.
 CSS: Estilização responsiva e layouts.
 JavaScript: Interatividade e manipulação do DOM.
 .NET (C#): API que gerencia os dados e conecta o front-end ao banco de dados.

*Funcionalidades
 Cadastro de pontos turisticos no país.
 Exibição de destinos turísticos no Brasil.
 Filtros de pesquisa por tipo de destino e localização.

 Para iniciar, clone o repositório :
 git clone https://github.com/MariaLu28/ProjPontosTuristicos.git

Configuração do Banco de Dados e Execução da API:

-Baixe e instale a versão 8 do SDK .Net no site da Microsoft:
https://dotnet.microsoft.com/en-us/download

-Restaure os pacotes do .NET:
dotnet restore

O banco de dados desse projeto foi criado no SQLServer. 

Para conexão com o banco, navegue até a pasta raiz do projeto e entre na pasta do back-end:

-Depois navegue até a pasta TodoApi e localize a pasta Data.

Abra o arquivo AppDbContext.cs.
Este arquivo é responsavel por configurar a conexão com o banco de dados. Certifique-se de que sua conexão siga o seguinte padrão:
"Server=(Seu servidor);Database=MeuBancoPT;Trusted_Connection=True;TrustServerCertificate=True;".

Após configurar a conexão com o banco, navegue para a pasta TodoApi:
cd TodoApi

-Gere o arquivo de imigração do banco de dados com o seguinte comando:
dotnet ef migrations add InitialCreate

Aplique as migrations para criar as tabelas no banco de dados:
dotnet ef database update

-Execute a API:
dotnet run

Configuração Front-end:

 -Para iniciar o sistema é necessario instalar a extensão Live Server.

 -Após a instalação da extensão, navegue até a pasta:

 -frontend
 --pages
 
 -E inicie o arquivo "inicio.html" clicando com o botão direito do mouse e escolhendo a opção "Open with Live Server".

 -Após a inicialização no navegador, certifique-se de que a URL onde o Liver Server iniciou é a mesma declarada no arquivo Program.cs,
 na pasta backend (cd backend), TodoApi (cd TodoApi).
 Caso não seja, declare a URL inciada pelo live Server na linha 10 dentro do parentese do policy.WithOrigins, e inicie a api novamente.

  -->

PROJPONTOSTURISTICOS
PROJPONTOSTURISTICOS é um sistema web cuja funcionalidade é cadastrar e buscar pontos turísticos do Brasil. A aplicação é construída com HTML, CSS, JavaScript no front-end e .NET (C#) para o back-end.

Tecnologias utilizadas:
HTML: Estrutura do conteúdo da página.
CSS: Estilização responsiva e layouts.
JavaScript: Interatividade e manipulação do DOM.
.NET (C#): API que gerencia os dados e conecta o front-end ao banco de dados.
Funcionalidades:
Cadastro de pontos turísticos no Brasil.
Exibição de destinos turísticos no Brasil.
Filtros de pesquisa por tipo de destino e localização.
Instruções para Iniciar o Projeto:
Clone o repositório:
git clone https://github.com/MariaLu28/ProjPontosTuristicos.git

Configuração do Banco de Dados e Execução da API:
O banco de dados deste projeto foi criado no SQL Server.

Configuração da Conexão com o Banco:

Navegue até a pasta raiz do projeto e entre na pasta do back-end:
cd backend

Em seguida, entre na pasta do projeto API:
cd TodoApi

Depois, acesse a pasta de dados:
cd Data

Abra o arquivo AppDbContext.cs. Este arquivo é responsável por configurar a conexão com o banco de dados. Certifique-se de que sua string de conexão esteja no seguinte formato:

"Server=(SeuServidor);Database=MeuBancoPT;Trusted_Connection=True;TrustServerCertificate=True;"

Restaurar os Pacotes do .NET:

dotnet restore

Volte para a pasta TodoApi:
cd TodoApi

Criar e Aplicar as Migrations:

Gere o arquivo de migração do banco de dados:

dotnet ef migrations add InitialCreate
Aplique as migrations para criar as tabelas no banco de dados:

dotnet ef database update

Confira se o banco foi criado no SQLServer.
A modelagem da tabela pode ser encontrada na pasta Models, no arquivo EstruturaDb.cs e no script do banco que acompanha esse repositório.

Executar a API:

Por fim, execute a API:

dotnet run.

*Configuração do Front-end:

Para iniciar o sistema no front-end, é necessário instalar a extensão Live Server.

Após instalar a extensão, navegue até a pasta:

frontend/pages
Inicie o arquivo inicio.html clicando com o botão direito e escolhendo a opção "Open with Live Server".

Após a inicialização no navegador, verifique se a URL onde o Live Server iniciou é a mesma configurada no arquivo Program.cs, na pasta backend/TodoApi.
Caso não seja, altere a URL no arquivo Program.cs, na linha 10, dentro do método WithOrigins(), e reinicie a API.
Com isso, o sistema estará pronto para uso.

Os dados de pontos turísticos podem ser cadastrados diretamente pela interface do sistema. Não há necessidade de inserir dados manualmente no banco de dados, pois a aplicação permite o cadastro de novos pontos turísticos através da funcionalidade na interface.

Após a execução da API e inicialização da interface front-end, basta navegar para a seção de cadastro e adicionar os pontos turísticos desejados.

Agradeço pela sua atenção.
