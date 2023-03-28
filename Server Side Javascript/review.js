// Route handler for forum web app
module.exports = function(app) {

 //The Code for review page goes here
 
    //Render page
   app.get('/review', function(req, res) {
        res.render('review.ejs');
      });
  

}
