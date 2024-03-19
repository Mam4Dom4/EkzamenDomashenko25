<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная администратора</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="container-content1">
    <header>
        <div class="logo">
            
        </div>
        <nav>
            <ul>
                <li><a href="#" class="href">Главная</a></li>
                <li><a href="#" class="href">Матчи</a></li>
                <li><a href="#" class="href">Участники</a></li>
                <li><a href="Autorizatia.php" class="href">Выход из учётной записи</a></li>
            </ul>
        </nav>
    </header>
</div>
<section class="recent-ads">
<?php
$host='localhost';
$db='tenisbd';
$user='root';
$password='';

$link=mysqli_connect($host,$user,$password,$db) or die("Ошибка".mysqli_error($link));
 mysqli_set_charset ( $link , "UTF8" );
$query = "SELECT * FROM `turnirbd`";
$b = mysqli_query($link, $query);
 
//Печатаем шапку таблицы
print ("<h3 align=center>Турнир</h3>
<table border=1  align=center width=90% cellpadding=5 valign=top>
<tr  bgColor=#DCDCDC  align=center>
<td width=8%>Код Турнира</td>
<td>Название турнира</td>
<td>Страна</td>
<td>Город</td>
<td>Дата начала</td>
<td>Дата окончания</td>
<td>Призовой фонд</td>
<td>Код админа</td>
</tr>");
 
//Печатаем содержимое таблицы
while ($a = mysqli_fetch_array($b))
{
$Kod_Turnira=$a['id_Turnira'];
$Nazvanie_Turnira=$a['Nazvanie'];
$Strana_Proved=$a['Strana_Provedenia'];
$Gorod_PRoved=$a['Gorod_Provedenia'];
$Data_Nac=$a['Data_Nachala'];
$Data_Okonch=$a['Data_Okonchania'];
$Priz=$a['Prizovoy_Fond'];
$Kod_Admina=$a['id_Admina'];
print ("<tr valign=top>
<td width=8% align=center bgColor=#DCDCDC>$Kod_Turnira</td>
<td align=center bgColor=#DAA520>$Nazvanie_Turnira</td>
<td align=center bgColor=#DAA520>$Strana_Proved</td>
<td align=center bgColor=#DAA520>$Gorod_PRoved</td>
<td align=center bgColor=#DAA520>$Data_Nac</td>
<td align=center bgColor=#DAA520>$Data_Okonch</td>
<td align=center bgColor=#DAA520>$Priz</td>
<td align=center bgColor=#DAA520>$Kod_Admina</td>
</tr>");
}
print ("</table>");
 
//Закрываем соединение
mysqli_close($link);
?>

</section>
<section class="recent-ads">
    <h2>Участники</h2>
    <div class="slider-container">
        <div class="slide">
            <img src="image/Foto1.jpg" alt="Фото" class="foto">
            <h3>Домашенко А.М.</h3>
            <p>Возраст: 25 лет</p>
            <p>Страна: Россия</p>
            <a href="#" class="details-button">Подробнее</a>
        </div>
        <div class="slide2">
            <img src="image/Foto2.jpg" alt="Термос" class="foto">
            <h3>Андре Агасси</h3>
            <p>Возраст: 36 лет</p>
            <p>Страна: CША</p>
            <a href="#" class="details-button">Подробнее</a>
        </div>
       <div class="slide3">
            <img src="image/Foto3.jpg" alt="Табуретка" class="foto1">
            <h3>Пит Сампрас</h3>
            <p>Возраст: 38 лет</p>
            <p>Страна: CША</p>
            <a href="подробнее.html" class="details-button">Подробнее</a>
        </div>
    </div>
</section>
<footer>
    <p>Создатель:</p>
    <img class="imgfuuter" src="image/Avtor.jpg" >
    <p>Домашенко Александр (shv9d.)</p>
    <p>Email: Alexshv9d@gmail.com</p>
    <nav>
        <ul>
            <li><a href="#" class="href">Главная</a></li>
            <li><a href="#" class="href">Матчи</a></li>
            <li><a href="#" class="href">Участники</a></li>
        </ul>
    </nav>
</footer>
</body>
</html>