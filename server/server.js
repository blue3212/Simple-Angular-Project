const express = require('express');
const app = express();
const port = 8080;
const path = require('path');

console.log("working directory is: " + process.cwd())

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`);
});

app.use(express.static(path.join(__dirname, '../dist/simple-angular-project/browser')));

app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, '../dist/simple-angular-project/browser/index.html'));
});