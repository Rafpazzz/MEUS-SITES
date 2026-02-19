import { useQuery } from "@tanstack/react-query";
import { useState } from "react";


export default function App() {
  const [typeProd, setType] = useState("PROCESSADOR");

  const {data, isLoading, isError} = useQuery({
    queryKey: ['produto-spring', typeProd],

    queryFn: async () => {
      const urlAPI = `http://localhost:8080/produto/findByType?type=${typeProd}`;

      const resposta = await fetch(urlAPI);
      
      if(!resposta.ok) {
        throw new Error('Error ao buscar na API do Spring Boot');
      }

      return resposta.json();
    }
  });

  if(isLoading) return <h2>Buscando dados na API</h2>;
  if(isError) return <h2>Error inesperado</h2>;

  // ✨ FUNÇÃO NOVA: Converte o número para dinheiro brasileiro
  const formatarPreco = (valor) => {
    return valor.toLocaleString('pt-BR', { style: 'currency', currency: 'BRL' });
  };

  return (
    // Adicionei width: '100%' para garantir que ocupe a tela toda
    <div style={{ padding: '40px', backgroundColor: '#0D1117', color: '#C9D1D9', minHeight: '100vh', width: '100%', fontFamily: 'Inter, system-ui, sans-serif' }}>
      
      {/* Cabeçalho */}
      <h1 style={{ borderBottom: '2px solid #30363D', paddingBottom: '15px', color: '#58A6FF', marginTop: 0 }}>
        ⚡ TechStore | E-Commerce
      </h1>
      
      {/* Botões de Filtro */}
      <div style={{ marginBottom: '30px', display: 'flex', gap: '15px', marginTop: '20px' }}>
        <button onClick={() => setType("PROCESSADOR")} style={{ padding: '10px 20px', backgroundColor: '#21262D', color: '#C9D1D9', border: '1px solid #30363D', borderRadius: '6px', cursor: 'pointer', fontWeight: 'bold', transition: '0.2s' }}>
          ⚙️ Processadores
        </button>

        <button onClick={() => setType("PLACA_MAE")} style={{ padding: '10px 20px', backgroundColor: '#21262D', color: '#C9D1D9', border: '1px solid #30363D', borderRadius: '6px', cursor: 'pointer', fontWeight: 'bold' }}>
          🖛 Placas-Mãe
        </button>
      </div>

      <h2 style={{ color: '#8B949E', fontSize: '1.1rem', marginBottom: '25px' }}>
        Exibindo resultados para: <span style={{ color: '#58A6FF', textTransform: 'uppercase' }}>{typeProd}</span>
      </h2>

      {/* Grid de Produtos */}
      <div style={{ display: 'flex', gap: '20px', flexWrap: 'wrap' }}>
        
        {data && data.map((produto) => (
          <div key={produto.id} style={{ 
            backgroundColor: '#161B22', 
            border: '1px solid #30363D', 
            borderRadius: '12px', 
            padding: '20px', 
            width: '260px', 
            display: 'flex', 
            flexDirection: 'column', 
            justifyContent: 'space-between',
            boxShadow: '0 8px 24px rgba(0,0,0,0.4)'
          }}>
            
            {/* Informações Superiores */}
            <div>
              <h3 style={{ margin: '0 0 10px 0', fontSize: '1.2rem', color: '#F0F6FC' }}>
                {produto.name || 'Nome do Produto'}
              </h3>
              
              <p style={{ margin: '0', fontSize: '0.9rem', fontWeight: 'bold', color: produto.isDisponivel ? '#3FB950' : '#F85149' }}>
                {produto.isDisponivel ? '✅ Em Estoque' : '❌ Esgotado'}
              </p>
            </div>

            {/* Preço e Botão de Compra */}
            <div style={{ marginTop: '25px', borderTop: '1px solid #30363D', paddingTop: '15px' }}>
              <p style={{ margin: '0', fontSize: '0.8rem', color: '#8B949E' }}>Preço à vista no PIX</p>
              
              {/* ✨ AQUI USAMOS A FUNÇÃO DE FORMATAR PREÇO */}
              <p style={{ margin: '5px 0 0 0', fontSize: '1.8rem', color: '#3FB950', fontWeight: '900' }}>
                {formatarPreco(produto.price)}
              </p>

              <button style={{ width: '100%', marginTop: '15px', padding: '12px', backgroundColor: '#238636', color: '#fff', border: 'none', borderRadius: '6px', fontWeight: 'bold', cursor: 'pointer', fontSize: '1rem' }}>
                🛒 Comprar
              </button>
            </div>

          </div>
        ))}

        {/* Feedback de Lista Vazia */}
        {data && data.length === 0 && (
          <div style={{ width: '100%', padding: '40px', border: '1px dashed #30363D', borderRadius: '12px', color: '#8B949E', textAlign: 'center' }}>
            <p style={{ fontSize: '1.2rem' }}>Nenhum produto encontrado nesta categoria.</p>
          </div>
        )}

      </div>
    </div>
  );
}