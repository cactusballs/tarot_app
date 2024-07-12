// creating the server 
const express = require('express');
const app = express();
const sql = require('mysql2');
const path = require('path');
require('dotenv').config();

// cors
const cors = require('cors');
app.use(cors());


app.use(express.json());
app.use(express.static(path.join(__dirname, 'FE')));  
// connecting to the DB
const dataBase = sql.createConnection({
  host: 'localhost',
  user: 'root',
  password: process.env.DB_PASSWORD,
  database: 'tarot'
});


// checkin we're connected to the DataBase 
dataBase.connect((error) => {
 if(error){
  console.error('Error connecting to the database:', err.stack);
  return;
 }
 console.log('Connected to the database.');
});

// producing a random card with intention 
app.get('/daily-pull', (req, res) =>{
  const query = `
  SELECT * FROM (
    SELECT name, number, meaning FROM MajorArcana
    UNION ALL 
    SELECT name, number, meaning FROM wands
    UNION ALL 
    SELECT name, number, meaning FROM cups
    UNION ALL 
    SELECT name, number, meaning FROM swords
    UNION ALL 
    SELECT name, number, meaning FROM pentacles
  ) AS combined
  ORDER BY RAND()
  LIMIT 1;
  `;
  dataBase.query(query, (error, results) => {
    if (error) {
      return res.status(500).json({ message: 'An error has occurred'});
    } 
    res.status(200).json(results[0]);
  })
});


// is it working? 
const port = 3002;
app.listen(port, () => {
  console.log(`server is running on http://localhost:${port}`);
});

