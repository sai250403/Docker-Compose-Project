const express = require('express');
const app = express();

app.get('/api/message', (req,res) => {
  res.json({ message: 'Hello from the back-end!' });
});

app.listen(5000, () => {
  console.log('Back-end running on port 5000');
});
