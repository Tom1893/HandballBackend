const { Pool } = require('pg')
const pool = new Pool({
    user: 'client',
    host: 'localhost',
    database: 'Handball',
    password: 'client123',
    port: 5432,
  })
module.exports = {
  query: (text, params) => pool.query(text, params),
}