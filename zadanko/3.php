<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="csss.css">
</head>
<body>
<?php
    $imiee=$_GET["imie"];
    $nazwiskoo=$_GET["nazwisko"];
    echo $imiee."<br>";
    echo $nazwiskoo."<br>";
    echo $_COOKIE["RB"]."<br>";
    echo $_COOKIE["waga"]."<br>";
?>
</body>
</html>