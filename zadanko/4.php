<?php
    $day = $_GET['day'];
    $hour = $_GET['hour'];
    $newName = $_GET['przedmiot'];
    $baza = mysqli_connect('localhost', 'root', '', 'tabelka');
    if(mysqli_errno($baza)) {
        echo "Error";
    }
    if(isset($_GET['edit'])) {
        mysqli_query($baza, "UPDATE plan SET nazwa='$newName' WHERE dzien='$day' AND nr='$hour';");
    }
    if(isset($_GET['delete'])) {
        mysqli_query($baza, "DELETE FROM plan WHERE dzien='$day' AND nr='$hour';");
    }
    ob_start();
    header('Location: http://localhost:8080/zadanko/1.php');
    ob_end_flush();
    die();
    mysqli_close($baza);
?>