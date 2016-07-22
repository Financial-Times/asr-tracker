var express = require('express');
var app = express();
var request = require("request");
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

var authS3O = require('s3o-middleware');
app.use(authS3O);

var mustacheExpress = require('mustache-express');

// Register '.ms' extension with The Mustache Express
app.engine('ms', mustacheExpress());

app.set('view engine', 'ms');
app.set('views', __dirname + '/views');

/** Environment variables **/
var port = process.env.PORT || 3001;
var cmdbEndpoint = process.env.CMDB_ENDPOINT || 'https://cmdb.ft.com/v2/items/system';
var apikey = process.env.APIKEY || 'changeme';

/**
 * Serves the form for submitting details
 */
app.get('/', function (req, res) {
	res.render('index', {username: res.locals.s3o_username});
});


/**
 * Send submits back to the CMDB
 */
app.post('/', function (req, res) {
	var dateSubmitted = new Date();
	var systemCode = req.body.systemCode;

	if (!systemCode) {
		res.status(400);
		res.render("error", {message: "No System Code Provided"});
		return;
	}
	request({
		url: cmdbEndpoint + '/'+systemCode,
		method: 'PUT',
		json: true,
		headers: {
			'APIKEY': apikey,
			'FT-Forwarded-Auth': "ad:"+ res.locals.s3o_username,
		},
		body: {
			"lastReviewed": dateSubmitted.toISOString(),
		},
	}, function (error, response, body) {
		if (error || response.statusCode != 200) {
			res.status(502);
			res.render("error", {message: "Problem connecting to CMDB"});
			return;
		}
		res.render('success', {
			systemCode: systemCode,
			username: res.locals.s3o_username,
			date: dateSubmitted.toISOString(),
		});
	});
});

app.use(function(req, res, next) {
  res.status(404).render('error', {message:"Page not found."});
});

app.use(function(err, req, res, next) {
  console.error(err.stack);
  res.status(500).render('error', {message:"Sorry, an unknown error occurred."});
});

app.listen(port, function () {
  console.log('App listening on port '+port);
});
