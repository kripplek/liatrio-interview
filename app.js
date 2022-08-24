const express = require('express')
const app = express()
// https://c.tenor.com/LZKLflbatg0AAAAC/this-is-bad-this-is-the-worst.gif
const port = 8888

app.get('/', (req, res) => {
  response = {
      "message": "Automate all the things and then some", 
      "timestamp": new Date().getTime()
  }
  res.send('!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
