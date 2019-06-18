<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bienes Raices</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<form method="get" action="anuncio.php">
	<header class="site-header">
        <div class="contenedor contenido-header">
            <div class="barra">
                <a href="/index.php">
                    <img src="img/logo.svg" alt="Logotipo de Bienes Raices">
                </a>
                <div class="mobile-menu">
                    <a href="#navegacion">
                        <img src="img/barras.svg" alt="Icono Menu">
                    </a>
                </div>

                <nav id="navegacion" class="navegacion">
                    <a href="nosotros.php">Nosotros</a>
                    <a href="anuncios.php">Anuncios</a>
                    <a href="blog.php">Blog</a>
                    <a href="contacto.php">Contacto</a>
                </nav>
            </div>
        </div> <!-- contenedor -->
    </header>

    <main class="seccion contenedor">
        <h2 class="fw-300 centrar-texto">Casas y Depas en Venta</h2>

        <div class="contenedor-anuncios">
            <?php            
            include("./Clases/PRINT.php");
            $PrintAd= new PrintClass();
            $PrintAd->PrintADSMain();
            ?>
        </div>
    </main>

    <footer class="site-footer seccion">
        <div class="contenedor contenedor-footer">
            <nav class="navegacion">
                <a href="nosotros.php">Nosotros</a>
                <a href="anuncios.php">Anuncios</a>
                <a href="blog.php">Blog</a>
                <a href="contacto.php">Contacto</a>
            </nav>
            <p class="copyright">Todos los Derechos Reservados 2019 &copy; </p>
        </div>
    </footer>
	</form>
    
</body>
</html>