<?php
session_start();

if (!isset($_SESSION['valido'])) {
    $_SESSION['valido'] = 0;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user = $_POST['usuario'];
    $pass = $_POST['pass'];

    $conexion = mysqli_connect('localhost', 'root', '', 'sistemacolegio');

    if (!$conexion) {
        die('No se pudo conectar: ' . mysqli_connect_error());
    }

    $query = "SELECT * FROM cuenta WHERE usuario='$user' AND contrasenia='$pass'";
    $record = mysqli_query($conexion, $query);

    if (mysqli_num_rows($record) > 0) {
        $_SESSION['valido'] = 1;
        header('location: iniciodocente.php');
        exit();
    } else {
        $_SESSION['valido'] = 0;
        header('location: index.php');
        exit();
    }
} else {
    echo "No se recibió una solicitud POST";
}
?>
