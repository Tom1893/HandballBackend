// ./app.js
const express = require('express')
const mountRoutes = require('./routes')
const cors = require('cors') 
const app = express()
const users = require('./routes/user')
app.use(cors())
app.use('/games', users)
app.listen(3000)
// ... more express setup stuff can follow