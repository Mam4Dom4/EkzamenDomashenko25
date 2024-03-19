<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<?php
$host='localhost';
$db='tenisbd';
$user='root';
$password='';
$log1="";
$pass1="";

$link=mysqli_connect($host,$user,$password,$db) or die("Ошибка".mysqli_error($link));
if(isset($_POST['Login']) && isset ($_POST['Parol'])){
    $Log = $_POST['Login'];
    $passwor = $_POST['Parol'];
    if(($Log=="")||($passwor==""))
			{
				echo "<script>alert(\"Введите данные\");</script>";
			}
            else{
$query = "select * from administartor_turnira where Login='$Log' and Parol='$passwor'";
$result = mysqli_query($link, $query) or die("Ошибка " . mysqli_error($link)); 
		if($result) 
    while ($row = mysqli_fetch_assoc($result)) {
		
		$log1=$row['Login'];
		$pass1=$row['Parol'];
				
	}
	if(($log1!=$Log)&&($pass1!=$passwor))
	{
        echo "<script>alert(\"Данного аккаунта - не существует, либо неправильно введены данные\");</script>"; 
	}
    else{
		    header("Location: Main.php");
		}
		
		}
    }
?>
<div class="login-container text-c animated flipInX">
    <div>
        <h1 class="logo-badge text-whitesmoke"><span class="fa fa-user-circle"></span></h1>
    </div>
    <h1 class="text-whitesmoke">Авторизация</h1>
    <div class="container-content">
    <form class="margin-t" method="POST">
            <div class="form-group">
                <input type="text" class="form-control" name="Login" placeholder="Login" pattern=".*@gmail.com.*" title="Пожалуйста, указывайте @gmail.com в адресе электронной почты" minlength="3" maxlength="50" required="">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="Parol" placeholder="Password" minlength="3" maxlength="25" required="">
            </div>
            <button type="submit" class="form-button button-l margin-b texta"><b>Вход</b></button>
            <p class="text-whitesmoke text-center"><small>У вас есть аккаунт администратора?</small></p>
            <a class="text-darkyellow" href="Registratia.php"><small>Зарегистрируйтесь</small></a>
        </form>
    </div>
</div>

</body>
</html>