import React, { StrictMode } from 'react'
import { createBrowserRouter, RouterProvider } from 'react-router'
import { QueryClient, QueryClientProvider } from '@tanstack/react-query'
import ReactDOM from 'react-dom/client';
import './index.css'
import App from './App.jsx'

//guardar a cache dos dados
const queryClient = new QueryClient();



//variavel que recebe um array de rotas, cada rota é representada por {}
const router = createBrowserRouter([
  //rota 1
  {
    path: "/",
    element: <App />
  },
  
]);

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    {/* garante que a aplicação do query CLiente funcione em qualquer lugar */}
    <QueryClientProvider client={queryClient}>
      <RouterProvider router={router} />
    </QueryClientProvider>
  </React.StrictMode>,
)
