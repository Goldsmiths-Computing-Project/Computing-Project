// Route handler for web app
module.exports = function(app) {

//The Code for forum page goes here

///Requiring Modules
const session = require('express-session');


///Creating Session
app.use(session({
  secret: 'mysecretkey',
  resave: false,
  saveUninitialized: true
}));

//Render forum page
app.get('/forum', (req, res) => {
  const sql = 'SELECT * FROM forum';
  db.query(sql, (err, results) => {
    if (err) {
      throw err;
    }
    const searchResults = { forum: [], forum: results };
    res.render('forum', searchResults);
  });
});
}
 
