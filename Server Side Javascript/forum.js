// Route handler for web app
module.exports = function(app) {

 //The Code for forum page goes here
 
    //Render page
   app.get('/forum', function(req, res) {
        res.render('forum.ejs');
      });
  

}
