<?php
class PrintClass
{



public function GetIMGDir($dir,$type)
{
    if ($opendir=opendir($dir)) 
    {
      while (($file=readdir($opendir))!==false)
        {
          if($file!="."&& $file!=".."&&$type==1)
            {
              echo("<img src='$dir/$file'>");
            }
            if ($file!="."&& $file!=".." &&$type==2) 
            {
                echo("<img src='$dir/$file'>");
                break;
            }
        }
    }
}
public function PrintADSMain()
{
  include("./Clases/conexion.php");
  $bd= new Con();
  $bd->selectMultiAnuncios("SELECT ID_PROPIEDAD,TITULO,CANT_SOLICITADA,CANT_BATHROOMS,CANT_CARS,CANT_BEDROOMS,DESCRIPCION_BREVE FROM PROPIEDAD LIMIT 6");
}
}
?>