// Route handler for web app
module.exports = function(app) {

 //The Code for forum page goes here
 //Render page
 app.get('/forum',function(req,res){
  let sqlquery = `SELECT   p.post_id, p.post_date, t.topic_title p.post_content, u.username
                  FROM     posts p
                  LEFT JOIN topics t
                  ON       p.topic_id = t.topic_id
                  LEFT JOIN users u
                  ON       p.user_id = u.user_id`;
  db.query(sqlquery, (err, result) => {
    if (err) {
       res.redirect('./');
    }
    let data = Object.assign({}, {posts:result});
    console.log(data)
    res.render('forum.ejs', data);
  });
});
}
