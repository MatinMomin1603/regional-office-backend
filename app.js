const express = require('express');
const app = express();
const port = 3000;

app.use("/",(req,res)=>{
  res.send(`<h1>Welcome to New Server`);
})

app.listen(port,()=>{
  console.log("Serevr is runnning on ",port);
});
