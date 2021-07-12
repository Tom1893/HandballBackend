const Router = require('express-promise-router')
const db = require('../db')
// create a new express-promise-router
// this has the same API as the normal express router except
// it allows you to use async functions as route handlers
const router = new Router()
// export our router to be mounted by the parent application
module.exports = router
router.get('/a', async (req, res) => {
  
  const { rows } = await db.query('SELECT s.ID, s.DATUM, MA.name, MAN.name as name2, s.ERGEBNIS FROM "Spiel" S INNER JOIN "Mannschaft2" MAN ON S.MANNSCHAFT2 = MAN.ID INNER JOIN "Mannschaft" MA ON S.MANNSCHAFT1 = MA.ID;')
  res.send({handball:rows})
})

// Platz für weiter Abfrgaen
router.get('/', async (req, res) => {
  
    const { rows } = await db.query('SELECT s.ID, s.DATUM, MA.name, MAN.name as name2, s.ERGEBNIS FROM "Spiel" S INNER JOIN "Mannschaft2" MAN ON S.MANNSCHAFT2 = MAN.ID INNER JOIN "Mannschaft" MA ON S.MANNSCHAFT1 = MA.ID;')
    res.send({handball:rows})
  })