function createSpinner(){
$(function() {
    $(".popContainer").jCarouselLite({
        btnNext: ".nextBtn",
        btnPrev: ".prevBtn",
        vertical: true,
        hoverPause:true, 
        visible: 6,
        auto:2000,
        speed:1500 
		//mouseWheel: true,
    });
});
	
}//function createSpinner(){
	
function createHorSpinner(){
$(function() {
    $(".popHorContainer").jCarouselLite({
        btnNext: ".nextHorBtn",
        btnPrev: ".prevHorBtn",
        horizontal: true,
        hoverPause: true, 
        visible: 4,
        auto:2000,
        speed:1500 
		//mouseWheel: true,
    });
});
	GEBI('horSpinHolder').style.left = "0px";
}//function createHorSpinner(){
	
	
function create_request (){
/* Создание нового объекта XMLHttpRequest для общения с Web-сервером */
var lc_xmlHttp = false;
/*@cc_on @*/
/*@if (@_jscript_version >= 5)
try {
  lc_xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
} catch (e) {
  try {
    lc_xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
  } catch (e2) {
    lc_xmlHttp = false;
  }
}
@end @*/
if (!lc_xmlHttp && typeof XMLHttpRequest != 'undefined') {
  lc_xmlHttp = new XMLHttpRequest();
}
return lc_xmlHttp;
};//function create_request (){

function GEBI (id){
	var element = false;
	element = document.getElementById(id)
	return element;
};//function GEBI (id){
	
function trim(inString)
{
return inString.replace(/(^\s+)|(\s+$)/g, "");
}

function rem_amp (str){
	var return_str = "";
	var last_pos = 0;
	var pos  = str.indexOf("&");
	while (pos!=-1) {
		return_str = return_str + str.substring(last_pos, pos)+"%26";
		last_pos = pos + 1;
		pos  = str.indexOf("&",last_pos);
	};//while (pos!=-1) {
		if (last_pos < str.length) return_str = return_str + str.substring(last_pos, str.length);
	return return_str;
};//function remove_amp (str){
	
function sendNewPass(name,lc_url){
	oldPass = trim(GEBI('ops1').value);
	newPass1 = trim(GEBI('nps1').value);
	newPass2 = trim(GEBI('nps2').value);
	if(newPass1.length==0){	alert ("Пустой пароль"); return false;};
	if(newPass1===newPass2){
		var mhNPrequest = create_request ();
		var url = lc_url+"/admin/dbDesigner.php";
		var params = "action=changePass&mhPass1="+rem_amp(oldPass)+"&mhPass2="+rem_amp(newPass1)+"&mhName="+name;
		mhNPrequest.open("POST", url, true);
		//alert(url);
		mhNPrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		mhNPrequest.setRequestHeader("Content-length", params.length);
		mhNPrequest.setRequestHeader("Connection", "close");

		mhNPrequest.onreadystatechange = function() {//Call a function when the state changes.
		if(mhNPrequest.readyState == 4 && mhNPrequest.status == 200) {
			alert(mhNPrequest.responseText);
		}
	}
		mhNPrequest.send(params);
	} else alert ("Несовпадение паролей");
	return false;
	
}//function sendNewPass(){

function loadItem(itemId,lc_url){
	//alert(itemId);
	GEBI('mhItemIframe').src = lc_url+"/admin/dbDesigner.php?itemId="+itemId;
}//function loadItem(itemId){

function setAdd(){
	GEBI('urlId').value = "";
	GEBI('nmId').value = "";
	GEBI('outimg').src = "";
	GEBI('dsc').value = "";
	GEBI('actionId').value = "insert";
}//function setAdd(){
	
function setDel(){
	if (confirm("Уверены, что удалить \""+GEBI('nmId').value+"\" ?")){
		GEBI('actionId').value = "delete";
		GEBI('mhitemEditor').submit();
	}
}//function setDel(){

function mhSearch(){
	if (GEBI('mh_srch').value.length>2){
	var method="name";
	if (GEBI('mh_rdb2').checked)  method="desc";
	
		
		var mhNPrequest = create_request ();
		var url = "scripts/php/searcher.php";
		var params = "method="+method+"&searchString="+rem_amp(trim(GEBI('mh_srch').value));
		mhNPrequest.open("POST", url, true);
		//alert(url);
		mhNPrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		mhNPrequest.setRequestHeader("Content-length", params.length);
		mhNPrequest.setRequestHeader("Connection", "close");

		mhNPrequest.onreadystatechange = function() {//Call a function when the state changes.
		if(mhNPrequest.readyState == 4 && mhNPrequest.status == 200) {
			//alert(mhNPrequest.responseText);
			GEBI('srchResult').innerHTML = mhNPrequest.responseText;
		}
	}
		mhNPrequest.send(params);	
	
	
	//alert(params);
}//if (GEBI('mh_srch').value.length>3){
else alert("Слишком мало символов. Требуется больше 2-х.");
}//function mhSearch(){