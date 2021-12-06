<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="styl5.css">
    <meta charset="UTF-8">
    <title>Port Lotniczy</title>
</head>
<body>
    <div id="baner">
        <div id="lewy">
            <img src="zad5.png" alt="logo lotnisko"></img>
        </div>
        <div id="srodek">
            <h1>Przyloty</h1>
        </div>
        <div id="prawy">
            <h3>przydatne linki</h3>
            <a href="kwerendy.txt">Pobierz...</a>
        </div>
    </div>
    <div id="glowny">
        <table>
            <tr>
                <td>CZAS</td>
                <td>KIERUNEK</td>
                <td>NUMER REJSU</td>
                <td>STATUS</td>
            </tr>
            <?php
                $baza=mysqli_connect("localhost","root","","egzamin");
                if (mysqli_connect_errno()){
                echo "Błąd";
                }
                $wynik = mysqli_query($baza,"SELECT czas,kierunek,nr_rejsu,status_lotu FROM przyloty ORDER BY czas ASC;");
                while($row = mysqli_fetch_array($wynik)){
                echo "<tr>".
                "<td>".$row[0]."</td>".
                "<td>".$row[1]."</td>".
                "<td>".$row[2]."</td>".
                "<td>".$row[3]."</td>".
                "</tr>";
                }
                mysqli_close($baza);
            ?>
        </table>
    </div>
    <div id="stopka">
        <div id="stopkalewy">
            <?php
                if(isset($_COOKIE['pierwszy'])){
                echo "<p><i>Witaj ponownie na stronie lotniska</i></p>";
                }else{
                setcookie('pierwszy',$tekst="Dzień dobry! Strona lotniska używa ciasteczek.",time()+7200);
                echo "<p><b>$tekst</b></p>";
                }
            ?>
        </div>
        <div id="stopkaprawy">
            Autor: Jan Ośko
        </div>
    </div>
</body>
</html>