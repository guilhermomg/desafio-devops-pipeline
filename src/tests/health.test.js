// src/tests/health.test.js - Teste de saúde da aplicação

const axios = require('axios');

// Teste para verificar se o endpoint /health retorna status 200 e a mensagem correta
test('verificar status de saúde', async () => {
  const response = await axios.get('http://localhost:3000/health');
  
  // Verifica se o status é 200 e se a resposta contém a mensagem esperada
  expect(response.status).toBe(200);
  expect(response.data).toBe('Aplicação funcionando');
});
