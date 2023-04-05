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


//write
app.post('/post', (req, res) => {
  const { name, lecture, course, review } = req.body;
  const sql = `INSERT INTO forum (username, topic_title, comment) VALUES (?, ?, ?, ?, ?)`;
  const values = [name, course, lecture, review, new Date()];
  db.query(sql, values, (err, result) => {
    if (err) {
      throw err;
    }
    const sql2 = 'SELECT * FROM forum';
    db.query(sql2, (err, results) => {
      if (err) {
        throw err;
      }
      req.session.forum = results;
      res.redirect('/forum');
    });
  });
});

}
 
