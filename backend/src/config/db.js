import pg from 'pg';

const pool = new Pool({
  user: 'your_user',
  host: 'localhost',
  database: 'database',
  password: 'password',
  port: 'port',
});

export const query = (text, params) => pool.query(text, params);