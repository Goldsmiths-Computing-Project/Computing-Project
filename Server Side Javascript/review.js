// Route handler for forum web app
module.exports = function(app) {

 
    //Render pages

   app.get('/rating', function(req, res) {
        res.render('rating.ejs');
      });
  

}
