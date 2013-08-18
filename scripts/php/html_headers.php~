<?php
// Функции для вывода HTML заголовка в файл с указанием кдировки
function write_html_header ($css="none", $charcoding = "windows-1251"){
	echo "<html>\n<head>\n";
	echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=".$charcoding."\" />\n";
	if ($css!=="none") echo "<link rel=\"stylesheet\" href=\"".$css."\"/>\n";
	echo "</head>\n<body>\n";
}//write_html_header 

function write_html_footer (){
	echo "\n</body>\n</html>";
}//write_html_footer

function br($count=1){
	for($i=0;$i<$count;$i++)
	echo "<br />";
}//br()

function hr($height=1){
	echo "<hr height=\"".$height."\" />";
}//nbsp()

function nb(){
	echo "&nbsp;";
}//nbsp()

function table($border="0", $misc="", $cellpadding="0", $cellspasing="0"){
echo "<table border=\"".$border."\" cellpadding=".$cellpadding."\" cellspasing=\"".$cellspasing."\" ".$misc.">\n";
}//table()

function etable(){
	echo "</table>\n";
}//etable()

function tr($valign="top"){
	echo "<tr valign=\"".$valign."\">\n";
}//tr()

function etr(){
	echo "</tr>\n";
}//tr()

function td($align="left"){
	echo "<td align=\"".$align."\">\n";
}//td()

function etd(){
	echo "</td>\n";
}//tr()

function td_span($colspan, $align="left"){
	echo "<td colspan=\"".$colspan."\" align=\"".$align."\">\n";
}//td_span()

function form($action,$method="GET",$name="form"){
echo "<form method=\"".$method."\" action=\"".$action."\" name=\"".$name."\">";
}//form

function load_form($action,$name="load_form"){
echo "<form method=\"POST\" action=\"".$action."\" enctype=\"multipart/form-data\" name=\"".$name."\">";
}//load_form

function download_form($action,$name="download_form"){
echo "<form method=\"POST\" action=\"".$action."\" name=\"".$name."\">";
}//download

function eform(){
echo "</form>";
}//eform

function input($type,$name,$id,$size="15"){
echo "<input type=\"".$type."\" name=\"".$name."\" id=\"".$id."\" size=\"".$size."\">";
}//input

function edit($name,$id,$value,$size="15"){
echo "<input type=\"edit\" name=\"".$name."\" id=\"".$id."\" value=\"".$value."\" size=\"".$size."\">";
}//input

function radio($name,$id,$value,$checked=false,$size="15"){
echo "<input type=\"radio\" name=\"".$name."\" id=\"".$id."\" value=\"".$value."\"";
if($checked) echo " checked "; echo "size=\"".$size."\">";
}//radio

function check($name,$id,$value,$checked=false,$size="15"){
echo "<input type=\"checkbox\" name=\"".$name."\" id=\"".$id."\" value=\"".$value."\"";
if($checked) echo " checked "; echo "size=\"".$size."\">";
}//check

function button($name,$id,$value,$size="15"){
echo "<input type=\"button\" name=\"".$name."\" id=\"".$id."\" value=\"".$value."\" size=\"".$size."\">";
}//button

function label($for,$text){
echo "<label for=\"".$for."\">".$text."</label>";
}//label

function sub_button($value="Submit"){
echo "<input type=\"submit\" name=\"go\" value=\"".$value."\">";
}//sub_button

function hidden($name,$value,$id=false){
echo "<input type=\"hidden\" name=\"".$name."\" value=\"".$value."\" ".(($id)?"id=\"".$id."\"":"").">";
}//hidden

function div($id,$align="left"){
echo "<div id=\"".$id."\" align=\"".$align."\">";
}//div

function ediv(){
echo "</div>";
}//ediv

?>
