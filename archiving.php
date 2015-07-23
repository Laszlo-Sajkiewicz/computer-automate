<?
 
 
// Inclure la librairie zip.lib de phpmyadmin
require_once("zip.lib.php");       
 
 
// nom du fichier zip que l'on veut
$fichier_zip = 'dossier_compress.zip';         
 
$zip= new zipfile;
 
// Indiquer le chemin du dossier qui va Ãªtre compressÃ©
$path = 'le_dossier';       
 
 
 
function zipDir($path,&$zip)
{
   
   if (!is_dir($path)) return;
   
   if (!($dh = @opendir($path))) {
      echo("<b>ERREUR: Une erreur s'est produite sur ".$path."</b><br />");
      return;
   }
   while ($file = readdir($dh)) {
     
      if ($file == "." || $file == "..") continue; // Throw the . and .. folders
      if (is_dir($path."/".$file)) { // Recursive call
         zipDir($path."/".$file,$zip,$i);   
      } elseif (is_file($path."/".$file)) { // If this is a file then add to the zip file
         
         $zip->addFile(file_get_contents($path."/".$file),$path."/".$file);
       echo('fichier '.$path.'/'.$file.' ajoutÃ©<br>');
      }
      }
}
 
zipDir($path,$zip);
 
// On recupÃ¨re le contenu du zip dans la variable $filezipped
$filezipped=$zip->file();       
 
 // indiquer le chemin pour la sauvegarde du dossier zipper
$open = fopen($fichier_zip, "w");   
fwrite($open, $filezipped);
fclose($open);
 
 
 
>?
