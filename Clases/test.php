

<?php   
$preload_data;
$img;
$legend;
$bd= include("conexion.php");
$bd= new con();
$bd->conectar();
$catch=$bd->select("SELECT ID_PROPIEDAD,TITULO,CANT_SOLICITADA,CANT_BATHROOMS,DESCRIPCION_BREVE FROM PROPIEDAD LIMIT 6");
echo("<div class='contenedor-anuncios'>
<div class='anuncio'>"GetIMGDir($catch[0],2)"
    <div class='contenido-anuncio'>
        <h3>"$catch[1]"</h3>
        <p>"$catch[6]"</p>
        <p class='precio'>$"$catch[2]"</p>
        <ul class='iconos-caracteristicas'>
            <li>
                <img src='img/icono_wc.svg' alt='icono wc'>
                <p>"$catch[3]"</p>
            </li>
            <li>
                <img src='img/icono_estacionamiento.svg' alt='icono autos'>
                <p>"$catch[4]"</p>
            </li>
            <li>
                <img src='img/icono_dormitorio.svg' alt='icono habitaciones'>
                <p>"$catch[5]"</p>
            </li>
        </ul>
        <a href='anuncio.php?ID=$catch[0]'class='boton boton-amarillo d-block' >Ver Propiedad</a>
    </div>"); echo("<div class='contenedor-anuncios'>
    <div class='anuncio'>"GetIMGDir($catch[0],2)"
        <div class='contenido-anuncio'>
            <h3>"$catch[1]"</h3>
            <p>"$catch[6]"</p>
            <p class='precio'>$"$catch[2]"</p>
            <ul class='iconos-caracteristicas'>
                <li>
                    <img src='img/icono_wc.svg' alt='icono wc'>
                    <p>"$catch[3]"</p>
                </li>
                <li>
                    <img src='img/icono_estacionamiento.svg' alt='icono autos'>
                    <p>"$catch[4]"</p>
                </li>
                <li>
                    <img src='img/icono_dormitorio.svg' alt='icono habitaciones'>
                    <p>"$catch[5]"</p>
                </li>
            </ul>
            <a href='anuncio.php?ID=$catch[0]'class='boton boton-amarillo d-block' >Ver Propiedad</a>
        </div>");

?>