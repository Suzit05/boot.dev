const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('Hello World! Your Node.js app is successfully running inside Docker! 🐳');
});

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});