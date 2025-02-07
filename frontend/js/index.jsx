const App = () => {
  const [count, setCount] = React.useState(0);

  React.useEffect(() => {
    const botao = document.getElementById("buttonBuscar");
    
    if (botao) {
      botao.addEventListener("click", () => {
        setCount(count => count + 1);
        alert(`Botão clicado! Total de cliques: ${count + 1}`);
      });
    }

    // Remove o evento ao desmontar o componente
    return () => {
      if (botao) {
        botao.removeEventListener("click", () => {});
      }
    };
  }, []);

  return null; // O componente React não renderiza nada, só adiciona lógica
};

// Renderizando no HTML
const rootElement = document.getElementById("root");
const root = ReactDOM.createRoot(rootElement);
root.render(<App />);
