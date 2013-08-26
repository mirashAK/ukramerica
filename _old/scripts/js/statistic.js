/*
 *      statistic.js
 *      
 *      Copyright 2010 Aleksandr <mirash@mirash-dell>
 *      
 *      This program is free software; you can redistribute it and/or modify
 *      it under the terms of the GNU General Public License as published by
 *      the Free Software Foundation; either version 2 of the License, or
 *      (at your option) any later version.
 *      
 *      This program is distributed in the hope that it will be useful,
 *      but WITHOUT ANY WARRANTY; without even the implied warranty of
 *      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *      GNU General Public License for more details.
 *      
 *      You should have received a copy of the GNU General Public License
 *      along with this program; if not, write to the Free Software
 *      Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 *      MA 02110-1301, USA.
 */

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
	
function send_counter (lcObjId){
	
	var request = create_request ();
	var url = "scripts/php/counter.php";
	var params = "obj_id="+lcObjId;
	//alert (params);
	request.open("POST", url, true);
	request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	request.setRequestHeader("Content-length", params.length);
	request.setRequestHeader("Connection", "close");
	request.send(params);
}
