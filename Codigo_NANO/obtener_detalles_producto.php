<?php
if (isset($_GET['id_producto'])) {
    $id_producto = $_GET['id_producto'];

    // Conexión a la base de datos
    $cnx = mysqli_connect("localhost", "root", "", "nano") or die("Problemas con la conexión");

    // Consulta para obtener los detalles del producto seleccionado
    $sql = "SELECT p.id_tipo, p.id_marca, p.id_rubro
            FROM producto p
            WHERE p.id_producto = '$id_producto'";

    $resultado = mysqli_query($cnx, $sql) or die("Problemas en la consulta");

    if ($fila = mysqli_fetch_assoc($resultado)) {
        // Devolver los detalles en formato JSON
        echo json_encode($fila);
    } else {
        echo json_encode([]);
    }

    // Cerrar la conexión
    mysqli_close($cnx);
}