<?
 
require_once("zip.lib.php");       
 
// file name
$fichier_zip = 'dossier_compress.zip';         
  $zip= new zipfile;
 // path
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
      } 
      elseif (is_file($path."/".$file)) { // If this is a file then add to the zip file
         $zip->addFile(file_get_contents($path."/".$file),$path."/".$file);
       echo('fichier '.$path.'/'.$file.' ajoutÃ©<br>');
      }
      }
}
 
zipDir($path,$zip);
 
$filezipped=$zip->file();       

$open = fopen($fichier_zip, "w");   
fwrite($open, $filezipped);
fclose($open);

>?
