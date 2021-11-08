<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Plan lekcji</title>
    <link rel="stylesheet" href="css.css">
</head>
<body>
    <table>
    <th colspan='10' class='cos'>PLAN LEKCJI</th>
    <?php
        $baza=mysqli_connect('localhost','root','','tabelka');
        if(mysqli_errno($baza)){
            echo "ERROR";
        }
            for($i=1;$i<=5;$i++){
                if($i==1){
                    echo "<tr><td class='cos'>Poniedzialek";
                }elseif($i==2){
                    echo "<tr><td class='cos'>Wtorek";
                }elseif($i==3){
                    echo "<tr><td class='cos'>Sroda";
                }elseif($i==4){
                    echo "<tr><td class='cos'>Czwartek";
                }elseif($i==5){
                    echo "<tr><td class='cos'>Piatek";
                }
                for($ii=1;$ii<=9;$ii++){
                    $wynik=mysqli_query($baza,"SELECT nazwa FROM plan WHERE nr=$ii AND dzien=$i");
                    $row=mysqli_fetch_array($wynik);
                    echo '<td>'.$row[0];
                }
            }
        mysqli_close($baza);
    ?>
    </table>
</body>
</html>