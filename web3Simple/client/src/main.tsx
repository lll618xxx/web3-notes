import React from 'react'
import ReactDOM from 'react-dom/client'

import App from './App'
import { TransactionsProvider } from "./context/TransactionContext";
import './index.css'

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <TransactionsProvider>
    <App />
  </TransactionsProvider>,
)
