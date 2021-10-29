<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<?php
    $rozmiarr=$_GET["rozmiar"];
    $wagaa=$_GET["waga"];
    setcookie('RB', $rozmiarr, time()+60);
    setcookie('waga', $wagaa, time()+60);
?>
<form action="3.php" method="GET">
    <p>Imie:</p>
    <input type="text" name="imie" >
    <p>Nazwisko:</p>
    <input type="text" name="nazwisko">
    <br><br>
    <input type="submit" value="Wyślij">
</form>
</body>
</html>