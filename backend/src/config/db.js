import dotenv from 'dotenv';
dotenv.config();

import pg from 'pg';

const pool = new pg.Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: process.env.DB_NAME,
  password: process.env.DB_PASSWORD,
  port: process.env.DB_PORT,
});


pool.connect((err, client, release) => {
  if (err) {
    return console.error('❌ Erro ao conectar ao banco de dados:', err.stack);
  }
  console.log('✅ Conectado ao PostgreSQL com sucesso!');
  release();
});

export const query = (text, params) => pool.query(text, params);