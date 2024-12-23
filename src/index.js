// src/index.js - Arquivo principal da aplicação

const express = require('express');
const app = express();
const port = 3000;

// Endpoint para verificar a saúde da aplicação
app.get('/health', (req, res) => {
  res.status(200).send('Aplicação funcionando');
});

// Iniciar o servidor na porta 3000
app.listen(port, () => {
  console.log(`Servidor rodando na porta ${port}`);
});
