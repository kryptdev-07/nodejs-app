// Import the express module
const express = require('express');

// Create an express application
const app = express();

// Define a port for the server
const PORT = process.env.PORT || 3000;

// Define a simple route
app.get('/', (req, res) => {
  res.send('Hello from Devendra!! Its CI/CD demo app!');
});

// Start the server
app.listen(PORT, () => {
  console.log(` Server is running on http://localhost:${PORT}`);
});

