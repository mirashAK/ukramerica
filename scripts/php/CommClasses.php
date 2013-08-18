<?php
/*
 *      CommClasses.php
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
 * 
 * 		Файл содержит реализации различных классов.
 * 		1) Класс TmhQuery - доступ к базам данных
 *  	2) Класс TmhSQLExeption - класс исключений при ошибках в БД
 */ 
?>
<?php
class TmhQuery {
	
	public $q = null;
	
	private $curr_connect = null, $query = false, $charcoding, $databaseName, $host;
			
	function __construct ($userName,$userPass,$dbName,$charcoding="cp1251",$host="localhost"){
		//echo ($userName);echo ($userPass);echo ($dbName);
		if ($this->curr_connect = mysql_connect($host,$userName,$userPass)){
			$this->databaseName = $dbName;
			$this->charcoding = $charcoding;
			$this->host = $host;
			mysql_query( "set session character_set_server=".$charcoding.";", $this->curr_connect );
			mysql_query( "set session character_set_database=".$charcoding.";", $this->curr_connect );
			mysql_query( "set session character_set_connection=".$charcoding.";", $this->curr_connect );
			mysql_query( "set session character_set_results=".$charcoding.";", $this->curr_connect );
			mysql_query( "set session character_set_client=".$charcoding.";",$this->curr_connect );
			mysql_select_db($dbName,$this->curr_connect);
		} //if ($this->curr_connect = mysql_connect($host,$userName,$userPass)){
		else { echo "error ".mysql_errno()."  ".mysql_error()."\n"; }
	}//function __construct
	
	function __destruct (){
		if ($this->curr_connect) mysql_close($this->curr_connect);
	}//function __destruct 
	
	public function getInfo (){
		echo ($this->charcoding."<br />");
		echo ($this->databaseName."<br />");
		echo ($this->host."<br />");
	}// public function getInfo
	
	public function getConnect (){
		if ($this->curr_connect) return $this->curr_connect;
	}//public function getConnect (){

	public function getQuery (){
		if ($this->query) return $this->query;
	}//public function getConnect (){
		
	private function showError(){
		echo "error ".mysql_errno()."  ".mysql_error()."<br />\n";
		echo ("Error in query:<br />");
		echo ($this->q."<br />");
		$this->q = null;
	}//private function showError()
	
	public function exec ( $show_q = false ){
		if ($this->q) {
			$this->query = false;
			$this->query = mysql_query ($this->q,$this->curr_connect);
			if ($show_q) echo ($this->q."<br />");
			if ($this->query === false){
				$this->showError();
				return false;
			}//if ($query === false){
			$this->q = null;
			if (mysql_num_rows($this->query)!==0)
			return $this->query;
			else return false;
		} else return false;
	}//public function execute
	
	public function delete ($show_q = false){
			if ($this->q) {
			$this->query = false;
			$this->query = mysql_query ($this->q,$this->curr_connect);
			if ($show_q) echo ($this->q."<br />");
			if ($this->query === false){
				$this->showError();
				return false;
			}//if ($query === false){
			$this->q = null;
		} else return false;
	}//public function delete
		
	public function update ($table,$colsArray,$condArray=0,$limit=0,$show_q = false){
		$this->q = "UPDATE `".$table."` SET";
		foreach ($colsArray as $key=>$value)
			$this->q .= " `".$key."` = '".$value."',";
			$this->q  = substr($this->q,0,strlen($this->q)-1);
		if ($condArray) { 
			$this->q .= " WHERE ";
			foreach ($condArray as $key=>$value)
				$this->q .= " `".$key."` = '".$value."' AND";
			$this->q  = substr($this->q,0,strlen($this->q)-4);
		}
		if ($limit) $this->q .= " LIMIT ".$limit;
		if ($show_q) echo ($this->q."<br />");
		$this->query = false;
		$this->query = mysql_query ($this->q,$this->curr_connect);
		if ($this->query === false){
			$this->showError();
			return false;
		}//if ($query === false){
		else {
			$this->q = null;
			return true;	
		}//else {
	}//public function update
	
	private function get_table_auto_increment_next_value($db, $table){
			$sql = "SHOW TABLE STATUS FROM `$db` LIKE '$table'";
			$result = mysql_query($sql);
			$row    = mysql_fetch_assoc($result);
			return $row['Auto_increment'];
	}//private function
	
	public function insert ($table,$colsArray,$show_q = false){
		$id = $this->get_table_auto_increment_next_value($this->databaseName, $table);
		$this->q = "INSERT INTO `".$table."` (";
		foreach ($colsArray as $key=>$value)
			$this->q.="`".$key."`,";
		$this->q  = substr($this->q,0,strlen($this->q)-1);
		$this->q.=") VALUES (";
		foreach ($colsArray as $key=>$value)
			$this->q.="'".$value."',";
		$this->q  = substr($this->q,0,strlen($this->q)-1);
		$this->q.=")";
		if ($show_q) echo ($this->q."<br />");
		$this->query = mysql_query ($this->q,$this->curr_connect);
		if ($this->query === false){
			$this->showError();
			return false;
		}//if ($query === false){
		else {
			$this->q = null;
			return $id;	
		}//else {
	}//public function insert 

	public function dumpTable (){
		if ($this->query) {
			$num = 1;
			echo ("\n<table border = \"1\">\n");
			while ($dumpArray = mysql_fetch_assoc ($this->query)){
				echo ("<tr>\n");
				if ($num == 1){
					echo ("<th>No</th>\n");
					foreach ($dumpArray as $key=>$value)
						echo ("<th>".$key."</th>\n");
						echo ("</tr>\n<tr>\n");
				}//if ($num == 1){
					echo ("<td>".$num."</td>\n");
					foreach ($dumpArray as $key=>$value)
						echo ("<td>".$value."</td>");
				echo ("</tr>\n");
				$num ++;
			}//while
			echo ("</table>\n");
			mysql_data_seek($this->query,1);
		}//if ($this->query) {
	}//public function dumpBase (){
	
	public function simpleJoin ($firstTable,$secondTable,$joinField,$firstFields=false,$secondFields=false,$order=false,$condition=false){
		$this->q = "SELECT ";
		if ($firstFields){
			$fields = explode(",",$firstFields);
			foreach ($fields as $key=>$value)
				$this->q = $this->q."t1.".$value.", ";
		}//if ($fistFields){
		else $this->q = $this->q."t1.*, ";

		if ($secondFields){
			$fields = explode(",",$secondFields);
			foreach ($fields as $key=>$value)
				$this->q = $this->q."t2.".$value.", ";
			// убираем лишнюю запятую
			$this->q = substr($this->q, 0, -2);
			$this->q = $this->q." ";
		}//if ($fistFields){
		else $this->q = $this->q."t2.* ";
		
		$this->q = $this->q."FROM `".$firstTable."` AS t1, `".$secondTable."` AS t2 ";
		$this->q = $this->q."WHERE t1.".$joinField."=t2.".$joinField." ";
		
		if ($condition) $this->q = $this->q."AND t1.".$condition." ";
		
		if ($order) $this->q = $this->q."ORDER BY ".$order;
		
		$this->q = $this->q."LIMIT 20";
		
		return $this->exec(1);
	}//public function simpleJoin 
	
	public function findById ($table, $idName, $search, $id){
		$q = "SELECT `".$search."` FROM `".$table."` WHERE `".$idName."`='".$id."' LIMIT 1";
		$query = mysql_query ($q,$this->curr_connect);
		if ($this->query === false){
				echo ("Error in query:<br />");
				echo ($q."<br />");
				return false;
			}//if ($query === false){
		if (mysql_num_rows($query)==0) return false;
		$queryResult = mysql_fetch_assoc($query);
		return $queryResult[$search];
	}//public function findById
	
	
} // class TmhQuery {
	
	

class TmhSQLExeption extends Exception {
	public $problem;
	function __construct ($problem) {
		$this->problem = $problem;
	} //function __construct
} // class TmhSQLExeption
?>
