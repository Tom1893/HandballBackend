// ./routes/index.js
const users = require('./user')
module.exports = app => {
  app.use('/games', users)
  
  // etc..
}