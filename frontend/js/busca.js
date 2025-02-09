<script type="text/babel">
    const { useState, useEffect } = React;

    // Importando a função de fetch do arquivo axiosService.js
    import { fetchData } from './axiosService.js';

    const App = () => {
        const [data, setData] = useState(null);
        const [searchTerm, setSearchTerm] = useState('');

        const handleSearch = () => {
            const endpoint = `pontos-turisticos?search=${searchTerm}`;  // Exemplo de endpoint
            fetchData(endpoint)
                .then(fetchedData => {
                    setData(fetchedData);
                })
                .catch(error => {
                    console.error("Erro na busca: ", error);
                });
        };

        return (
            <div>
                <h1>Pesquisar Pontos Turísticos</h1>
                <input
                    type="text"
                    value={searchTerm}
                    onChange={e => setSearchTerm(e.target.value)}
                    placeholder="Digite o termo de busca"
                />
                <button onClick={handleSearch}>Buscar</button>

                <div>
                    {data ? (
                        <pre>{JSON.stringify(data, null, 2)}</pre>
                    ) : (
                        <p>Nenhum dado encontrado</p>
                    )}
                </div>
            </div>
        );
    };

    ReactDOM.render(<App />, document.getElementById('root'));
</script>
