//alert(GEBI("itemIdId").value);
	var mhNPrequest = create_request ();
	var url = lc_url+"/admin/dbDesigner.php";
	var params = "action=setActive&itemId="+GEBI("itemIdId").value;
	mhNPrequest.open("POST", url, true);
	//alert(url);
	mhNPrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	mhNPrequest.setRequestHeader("Content-length", params.length);
	mhNPrequest.setRequestHeader("Connection", "close");

	mhNPrequest.onreadystatechange = function() {//Call a function when the state changes.
	if(mhNPrequest.readyState == 4 && mhNPrequest.status == 200) {
		//alert(mhNPrequest.responseText);
		window.parent.document.getElementById( "catsHolderId" ).innerHTML = mhNPrequest.responseText;
		}
	}
		mhNPrequest.send(params);
