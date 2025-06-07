#!/bin/bash
 
#Listas 
imagenes=("jpg" "jpeg" "png" "gif" "bmp" "webp" "svg" "eps" "ai" "cr2" "nef" "arw" "dng" "orf" "raw" "tiff" "tif" "ico" "heic" "heif")
documentos=("doc" "docx" "xls" "xlsx" "csv" "ods" "ppt" "pptx" "odp" "pdf" "txt" "md" "rtf" "odt" "tex" "bib" "log" "ini" "json" "xml" "yaml" "yml")
videos=("mp4" "mkv" "avi" "mov" "wmv" "flv" "webm" "m4v" "ogv" "mpg" "mpeg" "3gp" "3g2" "ts" "mts" "m2ts" "vob" "rmvb" "divx" "amv" "svi" "f4v" "asf" "dv" "mxf" "nsv")
musica=("mp3" "wav" "flac" "aac" "ogg" "m4a" "wma" "aiff" "alac" "opus" "amr" "mid" "midi" "ra" "ac3" "dts" "mp2" "caf" "voc" "au" "snd" "oga" "aax" "ape" "wv")
 
echo "======================"
echo "     Crear Archivos"
echo "======================"
echo "1) Imágenes"
echo "2) Documentos"
echo "3) Vídeos"
echo "4) Música"
echo "5) Salir"
echo

read -p "Elige una opción: " opcion

if [[ "$opcion" =~ ^[1-4]$ ]]; then
  read -p "Nombre base para los archivos: " nombre_base
fi

 case $opcion in
  1)
     for ext in "${imagenes[@]}"; do
       touch "${nombre_base}.${ext}"
      echo "${nombre_base}.${ext} creado"
    done
  ;;
  2)
     for ext in "${documentos[@]}"; do
       touch "${nombre_base}.${ext}"
       echo "${nombre_base}.${ext} creado"
     done
    ;;
   3)
     for ext in "${videos[@]}"; do
       touch "${nombre_base}.${ext}"
       echo "${nombre_base}.${ext} creado"
     done
     ;;
   4)
     for ext in "${musica[@]}"; do
       touch "${nombre_base}.${ext}"
       echo "${nombre_base}.${ext} creado"
     done
     ;;
   5)
     echo "Saliendo..."
     exit 0
    ;;
   *)
     echo "Opción no válida"
     ;;
 esac

 echo "Archivos generados correctamente."
