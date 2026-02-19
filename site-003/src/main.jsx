import { StrictMode } from 'react'
import { createBrowserRouter, RouterProvider } from 'react-router'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'

//variavel que recebe um array de rotas, cada rota é representada por {}
const router = createBrowserRouter([
  //rota 1
  {
    path: "/",
    element: <App />
  },
  
])

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
)
