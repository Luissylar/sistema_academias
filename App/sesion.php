<?php
session_start();

if (!isset($_SESSION['valido'])) {
    $_SESSION['valido'] = 0;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user = $_POST['usuario'];
    $pass = $_POST['pass'];

    $conexion = mysqli_connect('localhost', 'root', '', 'sistemacolegio', 3307);

    if (!$conexion) {
        die('No se pudo conectar: ' . mysqli_connect_error());
    }

    // Consulta preparada para evitar inyección SQL
    $query = "SELECT * FROM cuenta WHERE usuario=? AND contrasenia=?";
    $stmt = mysqli_prepare($conexion, $query);
    
    // Enlazar parámetros y ejecutar consulta
    mysqli_stmt_bind_param($stmt, 'ss', $user, $pass);
    mysqli_stmt_execute($stmt);
    
    // Obtener resultados
    $result = mysqli_stmt_get_result($stmt);

    if (mysqli_num_rows($result) > 0) {
        $_SESSION['valido'] = 1;
        header('location: iniciodireccion.php');
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
