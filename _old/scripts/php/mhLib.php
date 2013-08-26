<?php
/***********************************************************************************
Функция img_resize(): генерация thumbnails
Параметры:
  $src             - имя исходного файла
  $dest            - имя генерируемого файла
  $width, $height  - ширина и высота генерируемого изображения, в пикселях
Необязательные параметры:
  $rgb             - цвет фона, по умолчанию - белый
  $quality         - качество генерируемого JPEG, по умолчанию - максимальное (100)
***********************************************************************************/
function img_resize($src, $dest, $width, $height, $rgb=0xFFFFFF, $quality=100)
{
  if (!file_exists($src)) return false;

  $size = getimagesize($src);

  if ($size === false) return false;

  // Определяем исходный формат по MIME-информации, предоставленной
  // функцией getimagesize, и выбираем соответствующую формату
  // imagecreatefrom-функцию.
  $format = strtolower(substr($size['mime'], strpos($size['mime'], '/')+1));
  $icfunc = "imagecreatefrom" . $format;
  if (!function_exists($icfunc)) return false;

  $x_ratio = $width / $size[0];
  $y_ratio = $height / $size[1];

  $ratio       = min($x_ratio, $y_ratio);
  $use_x_ratio = ($x_ratio == $ratio);

  $new_width   = $use_x_ratio  ? $width  : floor($size[0] * $ratio);
  $new_height  = !$use_x_ratio ? $height : floor($size[1] * $ratio);
  $new_left    = $use_x_ratio  ? 0 : floor(($width - $new_width) / 2);
  $new_top     = !$use_x_ratio ? 0 : floor(($height - $new_height) / 2);

  $isrc = $icfunc($src);
  $idest = imagecreatetruecolor($width, $height);

  imagefill($idest, 0, 0, $rgb);
  imagecopyresampled($idest, $isrc, $new_left, $new_top, 0, 0, 
    $new_width, $new_height, $size[0], $size[1]);

  imagejpeg($idest, $dest, $quality);

  imagedestroy($isrc);
  imagedestroy($idest);

  return true;
}//function img_resize

/***********************************************************************************
Функция translitSA : перевод кириллических символов в транслит
Параметры:
  $stroka          - исходная строка
  $baza            - правила замены, разделены запятыми
Необязательные параметры:
  $splitter        - разделитель
***********************************************************************************/
function translitSA($stroka, $baza, $splitter = "|") {
	$baza = explode (",", $baza);
	foreach ($baza as $baza_char) {
      $arr_baza_char_split = explode ($splitter, $baza_char);
      $stroka = str_replace($arr_baza_char_split[0], $arr_baza_char_split[1], $stroka);
	  };
	  return $stroka;
}//function translitSA

/***********************************************************************************
Функция loadHTMLSnippet: загрузка содержимого HTML из внешнего файла
Упрощённая версия, предполагает наличие сниппетов в папке 'сервер/snippets/*.html'
Параметры:
  $name            - имя файла
  $addArray        - массив замен текстовых меток в файле
***********************************************************************************/
function loadHTMLSnippet ($name, $addArray=null)
{
	global $ukamConfig_live_site;
	$data = file_get_contents(CONF_st_abspath."/snippets/".$name.".html");
	$data = (str_replace("{site}",$ukamConfig_live_site,$data));
	if ($addArray)
		foreach ($addArray as $key=>$value)
			$data = (str_replace($key,$value,$data));
	echo (str_replace("{path}",CONF_st_abspath,$data)."\n");
	return true;
}//function loadHTMLSnippet

/***********************************************************************************
Функция mail_utf8: отправка текста по почте в кодировке UTF-8
Параметры:
  $to             - адрес
  $subject        - тема
  $message        - сообщение
  $from           - от кого
***********************************************************************************/
function mail_utf8($to, $subject = '(No subject)', $message = '', $from)
{
  $header = 'MIME-Version: 1.0' . "\n" . 'Content-type: text/plain; charset=UTF-8'
    . "\n" . 'From: Yourname <' . $from . ">\n";
  mail($to, '=?UTF-8?B?'.base64_encode($subject).'?=', $message, $header);
}//function mail_utf8

/***********************************************************************************
Функция uc2cp1251: первод строки из юникода в кодировку cp1251
Параметры:
  $str            - строка
***********************************************************************************/
function uc2cp1251($str)
{
	$ret = '';
	if ($str!='') {
	for( $i=0; $i<strlen($str)/2; $i++ ) {
		$charcode = ord($str[$i*2])+256*ord($str[$i*2+1]);
		$ret .= '%u0'.dechex($charcode);
	}
	$ret = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($ret));
	//$ret = urldecode($ret);
	$ret = html_entity_decode($ret,null,'UTF-8');
	$ret = iconv('utf-8', 'cp1251', $ret );
	return $ret;
	}//if ($str!='') {
}//function uc2cp1251

/***********************************************************************************
Функция utf8_urldecod: декодирование адресной строки
Параметры:
  $str            - строка
***********************************************************************************/
function utf8_urldecode($str) {
    $str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str));
    return html_entity_decode($str,null,'UTF-8');
}//function utf8_urldecode

?> 
