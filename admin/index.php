<?php
//defined functions: write_html_header(); write_html_footer(); br(); nb();
require_once("../scripts/php/html_headers.php");
write_html_header("css/main.css","utf-8");
br(10);
div("centr_elem","center");
echo "Войти в админпанель";
form("admin.php","POST");
table();
tr();td(); label("nm1","Имя пользователя");
td();input("text","name","nm1");
tr();td("right"); label("ps1","Пароль");
td();input("password","pass","ps1");
tr();td_span("2","center");sub_button("Вход");
etable();
eform();
ediv();
phpinfo();
write_html_footer();
?>
