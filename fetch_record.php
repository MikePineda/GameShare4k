<?php
//Include database connection
 require_once 'dbconnect.php';
if($_POST['rowid']) {
    $id = $_POST['rowid']; //escape string

$result = mysqli_query($conn,"SELECT * FROM juegos  WHERE ID = $id ");
while ($row = mysqli_fetch_row($result)){   
     echo " <center><h4 class='modal-title'>$row[1]</h4></center>";
     echo "</div>";
     echo " <div class='modal-body'>";
      echo "  <div class='row'>
      <div class='col-lg-6' >";
           echo "<center><img class='img-responsive zoom-img' src=".$row[3]." alt='' /> ";
           echo "<p style='font-size: 140%;'>Plataforma: $row[2]";
           echo "<p style='font-size: 140%;'>Condición: $row[7]</center></div>";


       echo "<div class='col-md-6'>";
echo "<p  style='font-size: 150%;'> $row[6]";
echo "<center><p  style='font-size: 200%;'>Precio: $row[5]</center>";
              echo "</div></div>";//cerramos el div de la columna y de row
     echo " </div>";




}
 }
?>
