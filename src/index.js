const express = require('express')
const app = express();


app.use(express.json()); 


app.listen(3000, () => console.log('Funcionando'))

app.get("/pagina", (req,res)=> res.json({Mensaje:"Funciona"}))