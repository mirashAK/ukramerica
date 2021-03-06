<?php
require_once ('CommClasses.php');
require_once ('html_headers.php');
require_once ('mhLib.php');

function the_permalink(){
	echo "http://ukramerica.com";
};//function the_permalink(){

function the_title(){
	echo "UkrAmerica - Продажа товаров популярных магазинов Америки с доставкой по Украине";
};//function the_title(){

function writeItemBlank($lc_itemId,$lc_url,$dbObj,$dbprefix,$isUpdate=false){
	header("Content-type: text/html; charset=utf-8");
	echo "<script type=\"text/javascript\" src=\"".$lc_url."/scripts/js/common.js\"></script>";
	echo "<form name=\"mhitemEditor\" id=\"mhitemEditor\" method=\"POST\" action=\"".$lc_url."/admin/dbDesigner.php\" enctype=\"multipart/form-data\">";

	$dbObj->q  = "SELECT t1.id, t1.name, t1.url, t1.image, t1.discount, t1.description, t2.cat_id, t3.clics"
			." FROM `".$dbprefix."stories` AS t1, `".$dbprefix."xref` AS t2,"
			. "`".$dbprefix."counter` AS t3"
			." WHERE t1.id=t2.stori_id AND t1.id=t3.story_id AND t1.id='".$lc_itemId."'";
			
	if ($itemQuery = $dbObj->exec(0)) $itemResult = mysql_fetch_assoc($itemQuery);
	table(0);tr();td();
	label("cts","Категория:");
	echo "<select name=\"cats\" size=\"1\" style=\"width:200px;\" id=\"cts\">";
	$dbObj->q  = "SELECT `id`, `name` FROM `".$dbprefix."categories`";
	if ($catQuery = $dbObj->exec())
		while ($catResult = mysql_fetch_assoc($catQuery)){
			echo "<option ".($catResult["id"]===$itemResult["cat_id"]?"selected":"")."><b>".$catResult["name"]."</b></option>";
		};//while ($catResult = mysql_fetch_assoc($catQuery)){
	echo "</select>";
	td();label("none","Количество переходов:");label("none",$itemResult["clics"]);
	tr();td();label("nmId","Наименование:");br();td();label("urlId","Адрес:");br();
	
	tr();td();edit("mhName","nmId",$itemResult["name"],20);td();edit("mhUrl","urlId",$itemResult["url"],30);

	tr();td();label("disId","Скидка, %");br();td();edit("mhDiscount","disId", $itemResult["discount"],20);br();

	tr();td();label("outimg","Картинка:");br();
	echo "<img id=\"outimg\" border=\"1\" src=\"".$lc_url."/".$itemResult["image"]."\" alt=\"Картинка\"/>";
	td();label("dsc","Описание:");br();
	echo "<textarea cols=\"50\" rows=\"9\" name=\"mhDescr\" id=\"dsc\">".$itemResult["description"]."</textarea>";
	tr();td_span(2);label("img","Загрузить картинку:&nbsp;(234x88)&nbsp;");input("file","imgFile","img","30");
	hidden("itemId",$lc_itemId,"itemIdId");
	echo "<input type=\"hidden\" name=\"action\" id=\"actionId\" value=\"update\">";br(2);
	tr();td();echo "<input type=\"submit\" name=\"go\" value=\"Сохранить\">";
	td("right"); echo "<input type=\"button\" value=\"Добавить\" onclick=\"setAdd();\">&nbsp;&nbsp;&nbsp;<input type=\"button\" value=\"Удалить\" onclick=\"setDel();\">";
	etable();
	echo "</form>";
	if ($isUpdate) {
		echo "<script type=\"text/javascript\">lc_url=\"".$lc_url."\"</script>";
		echo "<script type=\"text/javascript\" src=\"".$lc_url."/scripts/js/activator.js\"></script>";
	}
};//function writeItemBlank()

function categoriesOut($dbObj,$dbprefix,$live_site,$selectId=-1){
echo "<select name=\"many_select_opt[]\" size=\"23\" style=\"width:200px;\">";
	$dbObj->q  = "SELECT `id`, `name` FROM `".$dbprefix."categories`";
	if ($catQuery = $dbObj->exec())
		while ($catResult = mysql_fetch_assoc($catQuery)){
			echo "<option style=\"background:darkblue; color:white;\">".$catResult["name"]."</option>";
			$dbObj->q  = "SELECT t1.id, t1.name, t2.cat_id"
			." FROM `".$dbprefix."stories` AS t1, `".$dbprefix."xref` AS t2"
			." WHERE t1.id=t2.stori_id AND t2.cat_id='".$catResult["id"]."'";
			if ($strQuery = $dbObj->exec())
					while ($strResult = mysql_fetch_assoc($strQuery)){
						echo "<option ".(($strResult["id"]===$selectId)?"selected":"")
						." onclick=\"loadItem('".$strResult["id"]."','".$live_site."')\">--".$strResult["name"]."</option>";
					};//while ($strResult = mysql_fetch_assoc($strQuery)){
		};//while ($catResult = mysql_fetch_assoc($catQuery)){
	echo "</select>";
}//function categoriesOut(){
	
function loadCategories($dbObj,$prefix,$catId=0){
	$dbObj->q="SELECT `id`,`name` FROM `".$prefix."categories` WHERE `publish_on_main` = 'Y';";
	$query = $dbObj->exec();
	echo "<ul id=\"mainCategories\">";
	while ($result = mysql_fetch_assoc($query)){
		if (($catId) && ($result["id"]===$catId)) echo "<li id=\"selectedLeftItem\">";
		else echo "<li>";
		echo ("<a href=\"catalog.php?category=".$result["id"]."\">".$result["name"]."</a>");
		echo ("<div class=\"spacer3\"></div></li>");
	};//while ($result = mysql_fetch_assoc($query))
	echo "</ul>";
};//function loadCategories

function loadStories($dbObj,$prefix,$catId=1){
	$dbObj->q="SELECT t1.cat_id, t2.id, t2.name, t2.url, t2.image, t2.description, t3.clics FROM `".$prefix."xref` AS t1, `".$prefix."stories` AS t2, `".$prefix."counter` AS t3 WHERE t1.stori_id=t2.id AND t1.cat_id='".$catId."' AND t3.story_id=t2.id ORDER BY t3.clics DESC";
	$query = $dbObj->exec(0);
	echo ("<ul class=\"storList\">");
	while ($result = mysql_fetch_assoc($query))		
		formStoriCell ($result);
	echo ("</ul>\n");
};//function loadStories($dbObj,$prefix){
	
function loadPopulars($dbObj,$prefix){
	$dbObj->q = "SELECT t1.id, t1.name, t1.url, t1.image, t1.description, t2.clics FROM `".$prefix."stories` AS t1,  `".$prefix."counter` AS t2 WHERE t1.id=t2.story_id ORDER BY t2.clics DESC LIMIT 10";
	$query = $dbObj->exec();
	echo ("<ul class=\"storList\">");
	while ($result = mysql_fetch_assoc($query))		
		formStoriCell ($result);
	echo ("</ul>\n");
};//function loadStories($dbObj,$prefix){	

function loadDiscounts($dbObj,$prefix){
	$dbObj->q = "SELECT id, name, url, image, description, discount FROM `".$prefix."stories` WHERE `discount` > 0 ORDER BY discount DESC LIMIT 10";
	$query = $dbObj->exec();
	echo ("<ul class=\"storList\">");
	while ($result = mysql_fetch_assoc($query))		
		formStoriCell ($result,1);
	echo ("</ul>\n");
};//function loadDiscounts($dbObj,$prefix){
	
function loadSmallPopulars($dbObj,$prefix){
	$dbObj->q = "SELECT t1.id, t1.name, t1.url, t1.image, t1.description, t2.clics FROM `".$prefix."stories` AS t1,  `".$prefix."counter` AS t2 WHERE t1.id=t2.story_id ORDER BY t2.clics DESC LIMIT 10";
	$query = $dbObj->exec();
	echo ("<ul class=\"storList\">");
	while ($fieldsArr = mysql_fetch_assoc($query)){
		echo ("<li>");
		echo ("<noindex>");
		echo ("<a href=\"".$fieldsArr["url"]."\" rel=\"nofollow\" onclick=\"send_counter(".$fieldsArr["id"]."); window.open(this.href); return false;\"><img class=\"smallImg\" src=\"".$fieldsArr["image"]."\" alt=\"".$fieldsArr["name"]."\"/></a>");
		echo ("</noindex>");
		echo ("<img src=\"img/underline_small.gif\" alt=\"underline\" class=\"smallUnderline\"/>");
		echo ("</li>\n");
	};//while ($result = mysql_fetch_assoc($query))
	echo ("</ul>\n");
};//function loadSmallStories($dbObj,$prefix){	

function loadSmallDiscounts($dbObj,$prefix){
	$dbObj->q = "SELECT id, name, url, image, description, discount FROM `".$prefix."stories` WHERE `discount` > 0 ORDER BY discount DESC LIMIT 10";
	$query = $dbObj->exec();
	echo ("<ul class=\"storList\">");
	while ($fieldsArr = mysql_fetch_assoc($query)){
		echo ("<li>");
		echo ("<noindex>");
		echo ("<a href=\"".$fieldsArr["url"]."\" rel=\"nofollow\" onclick=\"send_counter(".$fieldsArr["id"]."); window.open(this.href); return false;\"><img class=\"smallImg\" src=\"".$fieldsArr["image"]."\" alt=\"".$fieldsArr["name"]."\"/><span class=\"smallDiscountSpan\">-".$fieldsArr["discount"]."%</span></a>");
		echo ("</noindex>");
		echo ("<img src=\"img/underline_small.gif\" alt=\"underline\" class=\"smallUnderline\"/>");
		echo ("</li>\n");
	};//while ($result = mysql_fetch_assoc($query))
	echo ("</ul>\n");
};//loadSmallDiscounts($dbObj,$prefix){

function formStoriCell ($fieldsArr,$discount=null){
		echo ("<li>");
		echo ("<div class=\"storyContainer\">");
		echo ("<h2>".str_replace("&","&amp;",$fieldsArr["name"])."</h2>");
		echo ("<noindex>");
		echo ("<a rel=\"nofollow\" href=\"".$fieldsArr["url"]."\" onclick=\"send_counter(".$fieldsArr["id"]."); window.open(this.href); return false;\">".$fieldsArr["url"]."</a>");
		echo ("</noindex>");
		echo ("<div class=\"spacer\"></div>");
		echo ("<div class=\"imgItem\"><a href=\"".$fieldsArr["url"]."\" onclick=\"send_counter(".$fieldsArr["id"]."); window.open(this.href); return false;\"><img class=\"smallImg\" src=\"".$fieldsArr["image"]."\" alt=\"".$fieldsArr["name"]."\"/>".($discount?"<span class=\"discountSpan\">-".$fieldsArr["discount"]."%</span>":"")."</a></div>");
		echo ("<div class=\"storyItem\">".str_replace("&","&amp;",$fieldsArr["description"])."</div>");
		echo ("<div class=\"clearer\"></div>");
		echo ("<img src=\"img/underline.gif\" alt=\"underline\" class=\"underline\"/>");
		echo ("</div>");
		echo ("</li>\n");
		
}//function formStoriCell ($fieldsArr){

function get_parent_category ($cat_id,$connect,$full=false){
	$q = "SELECT category_parent_id FROM ".tbl_prefix."category_xref WHERE category_child_id = '"
		.$cat_id."' LIMIT 1";
	$query=mysql_query($q,$connect);
	$xrefs=mysql_fetch_assoc($query);
	if ($xrefs["category_parent_id"]=="0") return $cat_id;
	if ($full) return $xrefs["category_parent_id"];
	if ($xrefs["category_parent_id"]!="0") return get_parent_category ($xrefs["category_parent_id"],$connect);
};//function get_hightest_category ($cat_id){

function get_child_category ($cat_id, $dbObj){
	$dbObj->q = "SELECT `category_child_id` FROM `".tbl_prefix."category_xref` WHERE `category_parent_id` = '"
		        .$cat_id."' LIMIT 1";
	$dbObj->exec();
	if (mysql_num_rows($dbObj->getQuery())===0) return false;
	else {
		$child = mysql_fetch_assoc($dbObj->getQuery());
		return $child["category_child_id"];
	};//else {
};//function get_child_category ($cat_id,$connect){

function get_table_auto_increment_next_value($db, $table)
{
  $sql = "SHOW TABLE STATUS FROM `$db` LIKE '$table'";

  $result = mysql_query($sql);
  $row    = mysql_fetch_assoc($result);
  
  return $row['Auto_increment'];
} 

function fatal($msg = '') {
	echo '[Fatal error]';
	if( strlen($msg) > 0 )
		echo ": $msg";
	echo "<br>\nScript terminated<br>\n";
	exit();
} 

function get_by_id ($geted_id, $param_name, $table, $l_connect, $id_name="id"){
	$q = "SELECT `".$param_name."` FROM `".$table."` WHERE `".$id_name."` = '".$geted_id."' LIMIT 1 ;";
	$query=mysql_query($q,$l_connect);
	$query_assoc=mysql_fetch_assoc($query);
	return $query_assoc[$param_name];
};//function get_simple_data ($geted_id, $param_name, $l_connect){
	
function get_by_name ($geted_name, $param_name, $table, $l_connect, $name_name="name"){
	$q = "SELECT ".$param_name." FROM ".$table." WHERE `".$name_name."` = '".$geted_name."' LIMIT 1";
	//echo ($q."<br />");
	$query=mysql_query($q,$l_connect);
	$query_assoc=mysql_fetch_assoc($query);
	return $query_assoc[$param_name];
};//function get_simple_data ($geted_id, $param_name, $l_connect){
 
?>
