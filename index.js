const { Pool } = require('pg')
    const pool = new Pool({
        user: 'client',
        host: 'localhost',
        database: 'Handball',
        password: 'client123',
        port: 5432,
      })


async function main(){
    
    const client = await pool.connect()
    const res = await client.query('SELECT s.ID, s.DATUM, MA.name, MAN.name as name2, s.ERGEBNIS FROM "Spiel" S INNER JOIN "Mannschaft2" MAN ON S.MANNSCHAFT2 = MAN.ID INNER JOIN "Mannschaft" MA ON S.MANNSCHAFT1 = MA.ID;')
    console.log(res.rows[0]) 
    for (let i in res.rows){
        console.log(res.rows[i])
    }
    await client.release()
}

async function main2(){

    const client = await pool.connect()
    const res = await client.query('SELECT $1::text as message', ['Hello world!'])
    console.log(res.rows[0]) // Hello world!
    await client.release()
}

main()
main2()