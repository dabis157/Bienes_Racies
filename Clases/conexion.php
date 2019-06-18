<!doctype html>
<html>
<head>
<meta charset="utf-8">
<!-- TemplateBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- TemplateEndEditable -->
<!-- TemplateBeginEditable name="head" -->
<!-- TemplateEndEditable -->
</head>
<?php
class Con
{
    protected $Print;
    public function Conectar()
    {        
        $mysqli = new mysqli("127.0.0.1", "root", "", "bienes_raices", 3306);
        if ($mysqli->connect_errno) 
        {   
            echo "Fallo al conectar a MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
        }
        echo $mysqli->host_info . " Conexion Exitosa\n";
    }
    public function select($param)
    {
        $mysqli = new mysqli("127.0.0.1", "root", "", "bienes_raices", 3306);
        if ($resultado= $mysqli->query($param))
        {
            $rows=mysqli_fetch_array($resultado);
                return $rows;
                
        }
    }
    public function selectMultiAnuncios($param)
    {
        $mysqli = new mysqli("127.0.0.1", "root", "", "bienes_raices", 3306);
        $Print= new PrintClass();
        if ($resultado= $mysqli->query($param))
        {
            while($rows=mysqli_fetch_array($resultado));
            {
                if (empty($rows)) 
                {
                    echo("esta vacio");
                }
              //  $img=$Print->GetIMGDir($dir,2);
           //    echo("<div class='anuncio'> $img
                             // <div class='contenido-anuncio'>
                               //   <h3>".$rows[1]."</h3>
                                 // <p>".$rows[6]."</p>
                                 // <p class='precio'>$".$rows[2]."</p>
                                  //<ul class='iconos-caracteristicas'>
                                    //  <li>
                                      //    <img src='img/icono_wc.svg' alt='icono wc'>
                                        //  <p>".$rows[3]."</p>
                                      //</li>
                                      //<li>
                                        //  <img src='img/icono_estacionamiento.svg' alt='icono autos'>
                                          //<p>".$rows[4]."</p>
                                      //</li>
                                      //<li>
                                        //  <img src='img/icono_dormitorio.svg' alt='icono habitaciones'>
                                         // <p>".$rows[5]."</p>
                                     // </li>
                                  //</ul>
                                  //<a href='anuncio.php?ID='".$rows[0]."'class='boton boton-amarillo d-block' >Ver Propiedad</a>
                              //</div>");

            }
                
        }
    }
}

	?>
<body>
</body>
</html>
