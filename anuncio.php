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
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="fonts.css">
</head>
<body>
<form method="get" id="anuncio">
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
	<?php
  include("./Clases/conexion.php");
  include("./Clases/PRINT.php");
  $bd= new Con();
  $ID= $_GET['ID'];
  $CATCH=$bd->select("CALL BRING_AD($ID)");
  $Print= new PrintClass();
	echo("<h1 class='fw-300 centrar-texto'>$CATCH[0]</h1>");
	?>
    <div id="Main">
        <div class=slides >
		  <?php
      $ID= $_GET['ID'];
			if(isset($ID))
			{
        $dir="img/casas/".$ID."/";
        $Print->GetIMGDir($dir,1);
			}
		  ?>
        </div>
    </div>   
    <main class="contenedor seccion contenido-centrado">
        <div class="resumen-propiedad">
			<p>Publicado por:<?php echo($CATCH[7].' '.$CATCH[8]);?></p>
			<p class="precio">$<?php echo($CATCH[1]);?></p>
            <ul class="iconos-caracteristicas">
                <li>
                    <img src="img/icono_wc.svg" alt="icono wc">
                    <p><?php echo($CATCH[2]); ?></p>
                </li>
                <li>
                    <img src="img/icono_estacionamiento.svg" alt="icono autos">
                    <p><?php echo($CATCH[3]);?></p>
                </li>
                <li>
                    <img src="img/icono_dormitorio.svg" alt="icono habitaciones">
                    <p><?php echo($CATCH[4]); ?></p>
                </li>
            </ul>
        </div><!--.resumen-propiedad-->
        <p>
		<?php echo($CATCH[5]);?>
		</p>    
	  <div>
		<h2>Proceder al checkout</h2>
		<button id="pay" class="pay" type="button"><img src="IMG/layer1.png"></button>
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
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="Js/jquery.slides.js" ></script>
<script>
	$(function(){
  $(".slides").slidesjs({
	  height:240,
    play: {
      active: true,
        // [boolean] Generate the play and stop buttons.
        // You cannot use your own buttons. Sorry.
      effect: "slide",
        // [string] Can be either "slide" or "fade".
      interval: 3000,
        // [number] Time spent on each slide in milliseconds.
      auto: true,
        // [boolean] Start playing the slideshow on load.
      swap: true,
        // [boolean] show/hide stop and play buttons
      pauseOnHover: false,
        // [boolean] pause a playing slideshow on hover
      restartDelay: 2500
        // [number] restart delay on inactive slideshow
    }
  });
});
</script>
</html>