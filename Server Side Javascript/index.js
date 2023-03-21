// Our wep appp
// A web application to provide discussion forums

// Import the modules we need
var express = require ('express')
var ejs = require('ejs')
var bodyParser= require ('body-parser')
const path = require('path');

// Create the express application object
const app = express()
const port = 8000

//Use bodyParser in express
app.use(bodyParser.urlencoded({ extended: true }))

// Set the directory where static files (css, js, etc) will be

app.use(express.static(path.join(__dirname, '..', 'Css')));

app.use(express.static(path.join(__dirname, '..', 'Client Side Javascript')));

app.use(express.static(path.join(__dirname, '..', 'Images')));

// app.use(express.static(path.join(__dirname, 'Client Side Javascript')));


// Tell Express that we want to use EJS as the templating engine
app.set('view engine', 'ejs');


// We want to use EJS's rendering engine

app.engine('html', ejs.renderFile);

// Tells Express how we should process html files

app.set('views', path.join(__dirname, '..', 'Html'));


// Requires the route.js file inside the routes folder passing in the Express app and data as arguments.  All the routes will go in this file
require('./routes')(app);


// Start the web app listening
app.listen(port, () => console.log(`Example app listening on port ${port}!`))