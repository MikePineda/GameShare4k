<?php

    require_once 'login.php'; //necesitamos este archivo!
    // conectar a la base de datos
    $conn = new mysqli($hostname, $user, $password, $database); //objeto conn
    if ($conn->connect_error)
    {
        echo <<< _END
            <h3 style="color:red;">Lo sentimos pero no podemos procesar el archivo.</h3>
  	   <p>Por favor regresa a la pagina anterior.<br>Si experimentas
 mas errores por favor envia un correo a: <a href="mailto:admin@server.com">Soporte tecnico</a>. Gracias!</p>
_END;
        die($conn->connect_error);
    }
?>
