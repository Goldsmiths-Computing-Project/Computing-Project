// Route handler for forum web app
module.exports = function(app) {

 
    //Render pages


    // app.get('/', function(req, res) {
    //     res.render('homepage.ejs');
    //   });


    app.get('/rating', function(req, res) {
        res.render('rating.ejs');
      });


    //   app.get('/forum', function(req, res) {
    //     res.render('forum.ejs');
    //   });

    

}