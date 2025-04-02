<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css">
        <style>
            .center
            {
                text-align: center;
                
            }
        </style>
        <script>
            function contrasena(x) {
                if (x=='admin') {
                    document.getElementById("admin").style.display = 'inline';
                    document.getElementById("empleado").style.display = 'none';
                }
                else if(x=='empleado'){
                    document.getElementById("admin").style.display = 'none';
                    document.getElementById("empleado").style.display = 'inline';
                }
            }
        </script>
    </head>
    <body>
    <section class = "form-register">
    <h1>USUARIO</h1>
    <section class = "center">
        <button type="button" class = "botons" onclick="contrasena('admin')" style="width: 200px; margin-right: 50px;"><img src="admin.jpg" width="100" height="100" alt="imagen de persona administradora"></button>
        <button type="button" class = "botons" onclick="contrasena('empleado')" style="width: 200px; margin-left: 50px;"><img src="normi.jpg" width="100" height="100" alt="imagen normi"></button><br>
    </section>
    <div id="admin" style="display: none;">
    <form method="get" action="comprobar.php" onchange="contrasena('var');">
    </form>
    </div>
    <div id="empleado" style="display: none;">
    <form method="get" action="comprobar.php" onchange="contrasena('var');">
    </form>
    </div>
    </section>
    </body>
</html>

<?php
$contraseña=$_GET['contrasena'];
if  (empty($contraseña)) {
    echo "<script>
                alert('contraseña incorrecta');
                window.location.href = 'index.html';
            </script>";
    exit();
}
if (isset($_GET['admin'])) {
    $usuario=$_GET['usuario1'];

    $cnx=mysqli_connect("localhost","root","","nano") or die("Problemas con la conexión");

    //2-CREAR CONSULTA
    $sql="SELECT `nombre` FROM `usuario` WHERE `contraseña`='$contraseña' AND `nombre`='$usuario'";

    //3-EJECUTAR LA CONSULTA
    $resultado=mysqli_query($cnx,$sql) or die("No se pudo subir el archivo");

    //4-CERRAR LA CONEXIÓN A LA BD.
    mysqli_close($cnx);
    if (mysqli_fetch_row($resultado)>0) {
        echo "<script>
                window.location.href = 'admin.php';
            </script>";
    }else{
        echo "<script>
                alert('contraseña incorrecta');
                window.location.href = 'index.html';
            </script>";
    }
}
else if (isset($_GET['empleado'])) {
    $usuario=$_GET['usuario2'];
    
    $cnx=mysqli_connect("localhost","root","","nano") or die("Problemas con la conexión");

    //2-CREAR CONSULTA
    $sql="SELECT `nombre` FROM `usuario` WHERE `contraseña`='$contraseña' AND `nombre`='$usuario'";

    //3-EJECUTAR LA CONSULTA
    $resultado=mysqli_query($cnx,$sql) or die("No se pudo subir el archivo");

    //4-CERRAR LA CONEXIÓN A LA BD.
    mysqli_close($cnx);
    if (mysqli_fetch_row($resultado)>0) {
        echo "<script>
                window.location.href = 'normi.php';
            </script>";
    }else{
        echo "<script>
                alert('contraseña incorrecta');
                window.location.href = 'index.html';
            </script>";
    }
}
?>
