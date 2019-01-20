let currentItemId = null;

document.getElementById("getItemFromImageButton").addEventListener("click", e => {
	const req = new XMLHttpRequest();
	if (!req) {
		alert("Giving up :( Cannot create an XMLHTTP instance");
		return false;
	}
	req.onreadystatechange = () => {
		if (req.readyState === XMLHttpRequest.DONE) {
			if (req.status === 200) {
				console.log(req.response);
				if (!req.response.error) {
					currentItemId = req.response.item_id;
				}
			} else {
				alert("There was a problem with the request.");
			}
		}
	};
	req.open("POST", "getItemFromImage");
	req.responseType = "json";
	req.send(new FormData(document.getElementById("getTextFromImage")));
	e.preventDefault();
});

document.getElementById("submitExpiryForItem").addEventListener("click", e => {
	if (currentItemId === null) {
		console.log("no item scanned yet.");
		e.preventDefault();
		return;
	}
	const req = new XMLHttpRequest();
	if (!req) {
		alert("Giving up :( Cannot create an XMLHTTP instance");
		e.preventDefault();
		return false;

	}
	req.onreadystatechange = () => {
		if (req.readyState === XMLHttpRequest.DONE) {
			if (req.status === 200) {
				console.log(req.response);
			} else {
				alert("There was a problem with the request.");
			}
		}
	};
	req.open("POST", "getExpiryFromImage");
	req.responseType = "json";
	const data = new FormData(document.getElementById("expiryForm"));
	data.append("itemId", currentItemId);
	req.send(data);
	e.preventDefault();
});