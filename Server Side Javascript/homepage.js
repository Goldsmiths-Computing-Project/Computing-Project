// Route handler for web app
module.exports = function(app) {

 //The Code for homepage page goes here
 
    //Render page
   app.get('/', function(req, res) {
        res.render('homepage.ejs');
      });
  

}
