// Imports the Google Cloud client library
//const vision = require("@google-cloud/vision");
//process.env.GOOGLE_APPLICATION_CREDENTIALS = "./GoogleCredentials.json";
// Creates a client
/*
const client = new vision.ImageAnnotatorClient();
const fileName = "./eyedrop.jpg";
// Performs label detection on the image file
(async () => {
	const [result] = await client.textDetection(fileName);
	const detections = result.textAnnotations;
	console.log("Text:");
	detections.forEach(text => console.log(text));
})();
*/
const express = require("express");
const mysql = require("mysql");
const path = require('path');
const multer = require("multer")();

const app = express();
app.use(express.static('src'));

const port = 3000;

const con = mysql.createConnection({
	host: "localhost",
	user: "root",
	password: "",
	database: "innovaid"
});

let nric = null;

let currentCheck = null;

app.get('/startRoutineCheck', (req, res) => {
	nric = req.query.nric;
	currentCheck = {};
	res.sendFile(path.join(__dirname, 'src', 'routinecheck.html'));
});

app.post("/getItemFromImage", multer.none(), (req, res) => {
	if (nric === null) {
		res.send({"error": "not logged in"});
		return;
	}
	console.log(req.body);
	con.query(`SELECT item_id from mappings where detected_text = "${req.body.detectedText}";`, function (err, result) {
		if (err) {
			console.log(err);
			throw err;
		}
		console.log("Result: " + JSON.stringify(result));
		res.send(result[0]);
	});
});

app.post("/getExpiryFromImage", multer.none(), (req, res) => {
	if (nric === null) {
		res.send({"error": "not logged in"});
		return;
	}
	const itemId = req.body.itemId;
	if (currentCheck[itemId] === undefined) {
		currentCheck[itemId] = [];
	}
	currentCheck[itemId].push(req.body.expiryDate);
	res.send(currentCheck);
});

app.get('/', (req, res) => {
	res.sendFile(path.join(__dirname, 'src', 'index.html'));
});

app.get('/abort', (req, res) => {
	if (nric === null) {
		res.send({"error": "not logged in"});
		return;
	}
	nric = null;
	res.send('Aborted successfully');
});

app.get('/finishCheck', (req, res) => {
	if (nric === null) {
		res.send("Not logged in");
		return;
	}
	if (currentCheck === null) {
		res.send("None scanned");
		return;
	}
	con.query("SELECT id, quantity FROM items", (err, result) => {
		if (err) throw err;
		console.log(result);
		console.log("data:");
		console.log(currentCheck);
		let isAllScanned = true;
		for (const {id, quantity} of result) {
			if (currentCheck[id] === undefined && currentCheck[id].length !== quantity) {
				isAllScanned = false;
				break;
			}
		}
		res.send(isAllScanned);
		if (isAllScanned) {
			//res
			con.query("INSERT INTO routine_checks (date, checked_by) VALUES (?, ?)", [Date.now(), nric], (err, result) => {
				if (err) throw err;
				console.log(result);
				con.query("SELECT MAX(id) as currentRoutineCheckId from routine_checks", (err, result) => {
					console.log(result);
				})
			});
			//currentCheck = null;
		}
	})

});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));