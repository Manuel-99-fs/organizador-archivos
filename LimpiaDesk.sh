#!/bin/bash
# Programa diseñado para mover archivos en función de la extensión que tenga

# Variable Origen ---> Carpeta Descargas/Downloads 
origen="$HOME/Downloads"

# Verificar y definir carpetas de destino (imágenes, documentos, vídeos, música)
if [ -d "$HOME/Pictures" ]; then
  destino_imagenes="$HOME/Pictures"
elif [ -d "$HOME/Imágenes" ]; then
  destino_imagenes="$HOME/Imágenes"
else
  echo "No se encuentra ninguna carpeta de Imágenes válida"
  exit
fi

if [ -d "$HOME/Documents" ]; then
  destino_documentos="$HOME/Documents"
elif [ -d "$HOME/Documentos" ]; then
  destino_documentos="$HOME/Documentos"
else
  echo "No se encuentra ninguna carpeta de Documentos válida"
  exit
fi

if [ -d "$HOME/Videos" ]; then
  destino_videos="$HOME/Videos"
elif [ -d "$HOME/Vídeos" ]; then
  destino_videos="$HOME/Vídeos"
else
  echo "No se encuentra ninguna carpeta de Vídeos válida"
  exit
fi

if [ -d "$HOME/Music" ]; then
  destino_musica="$HOME/Music"
elif [ -d "$HOME/Música" ]; then
  destino_musica="$HOME/Música"
else
  echo "No se encuentra ninguna carpeta de Música válida"
  exit
fi

# ----------------------------- FUNCIONES -----------------------------

mover_imagenes() {
  echo "Moviendo Imágenes..."
  for archivo in "$origen"/*; do
    if [[ -f "$archivo" ]]; then
      extension=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
      case "$extension" in
        jpg|jpeg|png|gif|bmp|webp|svg|eps|ai|cr2|nef|arw|dng|orf|raw|tiff|tif|ico|heic|heif)
          mv "$archivo" "$destino_imagenes"
          echo "Archivo movido con éxito: $(basename "$archivo")"
        ;;
      esac
    fi
  done
  echo "Imágenes organizadas con éxito"
}

mover_documentos() {
  echo "Moviendo Documentos..."
  for archivo in "$origen"/*; do
    if [[ -f "$archivo" ]]; then
      extension=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
      case "$extension" in
        doc|docx|xls|xlsx|csv|ods|ppt|pptx|odp|pdf|txt|md|rtf|odt|tex|bib|log|ini|json|xml|yaml|yml)
          mv "$archivo" "$destino_documentos"
          echo "Archivo movido con éxito: $(basename "$archivo")"
        ;;
      esac
    fi
  done
  echo "Documentos organizados con éxito"
}

mover_videos() {
  echo "Moviendo Vídeos..."
  for archivo in "$origen"/*; do
    if [[ -f "$archivo" ]]; then
      extension=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
      case "$extension" in
        mp4|mkv|avi|mov|wmv|flv|webm|m4v|ogv|mpg|mpeg|3gp|3g2|ts|mts|m2ts|vob|rmvb|divx|amv|svi|f4v|asf|dv|mxf|nsv)
          mv "$archivo" "$destino_videos"
          echo "Archivo movido con éxito: $(basename "$archivo")"
        ;;
      esac
    fi
  done
  echo "Vídeos organizados con éxito"
}

mover_musica() {
  echo "Moviendo Música..."
  for archivo in "$origen"/*; do
    if [[ -f "$archivo" ]]; then
      extension=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
      case "$extension" in
        mp3|wav|flac|aac|ogg|m4a|wma|aiff|alac|opus|amr|mid|midi|ra|ac3|dts|mp2|caf|voc|au|snd|oga|aax|ape|wv)
          mv "$archivo" "$destino_musica"
          echo "Archivo movido con éxito: $(basename "$archivo")"
        ;;
      esac
    fi
  done
  echo "Música organizada con éxito"
}


# --------------------------SUBMENU--------------------------------

ordenar_imagenes_por_extension() {
echo
read -p "¿Quieres crear subdirectorios por extensión en la carpeta Imágenes/Pictures? (s/n): " respuesta



if [[ "$respuesta" =~ ^[sS]$ ]]; then
	extensiones=("jpg" "jpeg" "png" "gif" "bmp" "webp" "svg" "eps" "ai" "cr2" "nef" "arw" "dng" "orf" "raw" "tiff" "tif" "ico" "heic" "heif")
	echo "Comprobando y creando directorios si no existen..."

	for ext in "${extensiones[@]}"; do
		dir="$destino_imagenes/$ext"
		if [ ! -d "$dir" ]; then
		 mkdir -p "$dir"
		 echo "El subdirectorio se ha creado con éxito $dir"
		else
		 echo "El subdirectorio $dir ya existe"
		fi
	done

	echo
	read -p "¿Quieres ordenar los archivos por extensión en sus carpetas? (s/n): " ordenar



	if [[ "$ordenar" =~ ^[sS]$ ]]; then
		echo "Ordenando las imágenes por extension en sus carpetas correspondientes..."

		for archivo in "$destino_imagenes"/*; do
	 	 if [[ -f "$archivo" ]]; then
	  	  ext=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
	  	  for e in "${extensiones[@]}"; do
	   	   if [[ "$ext" == "$e" ]]; then
	    	    mv "$archivo" "$destino_imagenes/$ext/"
	    	    echo " Movido: $(basename "$archivo") a $ext/"
	   	   fi
	  	  done
	 	 fi
		done

		echo "Todas las imágenes han sido movidas por extensión con éxito"
	else

		echo "Ordenación por extensión ha sido cancelada."
	fi
else
	echo "Cancelación de subdirectorios ha sido cancelada."
fi
}



ordenar_documentos_por_extension() {
echo
read -p "¿Quieres crear subdirectorios por extensión en la carpeta Documentos/Documents? (s/n): " respuesta



if [[ "$respuesta" =~ ^[sS]$ ]]; then
         extensiones=("doc" "docx" "xls" "xlsx" "csv" "ods" "ppt" "pptx" "odp" "pdf" "txt" "md" "rtf" "odt" "tex" "bib" "log" "ini" "json" "xml" "yaml" "yml")
         echo "Comprobando y creando directorios si no existen..."

         for ext in "${extensiones[@]}"; do
                 dir="$destino_documentos/$ext"
                 if [ ! -d "$dir" ]; then
                  mkdir -p "$dir"
                  echo "El subdirectorio se ha creado con éxito $dir"
                 else
                  echo "El subdirectorio $dir ya existe"
                 fi
         done

         echo
         read -p "¿Quieres ordenar los archivos por extensión en sus carpetas? (s/n): " ordenar



         if [[ "$ordenar" =~ ^[sS]$ ]]; then
                 echo "Ordenando los documentos por extension en sus carpetas correspondientes..."

                 for archivo in "$destino_documentos"/*; do
                  if [[ -f "$archivo" ]]; then
                   ext=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
                   for e in "${extensiones[@]}"; do
                    if [[ "$ext" == "$e" ]]; then
                     mv "$archivo" "$destino_documentos/$ext/"
                     echo " Movido: $(basename "$archivo") a $ext/"
                    fi
                   done
                  fi
                 done

                 echo "Todas los documentos han sido movidas por extensión con éxito"
         else

                 echo "Ordenación por extensión ha sido cancelada."
         fi
 else
         echo "Cancelación de subdirectorios ha sido cancelada."
 fi
 }



ordenar_videos_por_extension() {
echo
read -p "¿Quieres crear subdirectorios por extensión en la carpeta Vídeos/Videos? (s/n): " respuesta



if [[ "$respuesta" =~ ^[sS]$ ]]; then
         extensiones=("mp4" "mkv" "avi" "mov" "wmv" "flv" "webm" "m4v" "ogv" "mpg" "mpeg" "3gp" "3g2" "ts" "mts" "m2ts" "vob" "rmvb" "divx" "amv" "svi" "f4v" "asf" "dv" "mxf" "nsv")
         echo "Comprobando y creando directorios si no existen..."

         for ext in "${extensiones[@]}"; do
                 dir="$destino_videos/$ext"
                 if [ ! -d "$dir" ]; then
                  mkdir -p "$dir"
                  echo "El subdirectorio se ha creado con éxito $dir"
                 else
                  echo "El subdirectorio $dir ya existe"
                 fi
         done

         echo
         read -p "¿Quieres ordenar los archivos por extensión en sus carpetas? (s/n): " ordenar



         if [[ "$ordenar" =~ ^[sS]$ ]]; then
                 echo "Ordenandos los vídeos por extension en sus carpetas correspondientes..."

                 for archivo in "$destino_videos"/*; do
                  if [[ -f "$archivo" ]]; then
                   ext=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
                   for e in "${extensiones[@]}"; do
                    if [[ "$ext" == "$e" ]]; then
                     mv "$archivo" "$destino_videos/$ext/"
                     echo " Movido: $(basename "$archivo") a $ext/"
                    fi
                   done
                  fi
                 done

                 echo "Todas los vídeos han sido movidas por extensión con éxito"
         else

                 echo "Ordenación por extensión ha sido cancelada."
         fi
 else
         echo "Cancelación de subdirectorios ha sido cancelada."
 fi
 }


ordenar_musica_por_extension() {
echo
read -p "¿Quieres crear subdirectorios por extensión en la carpeta Música/Music? (s/n): " respuesta



if [[ "$respuesta" =~ ^[sS]$ ]]; then
         extensiones=("mp3" "wav" "flac" "aac" "ogg" "m4a" "wma" "aiff" "alac" "opus" "amr" "mid" "midi" "ra" "ac3" "dts" "mp2" "caf" "voc" "au" "snd" "oga" "aax" "ape" "wv")
         echo "Comprobando y creando directorios si no existen..."

         for ext in "${extensiones[@]}"; do
                 dir="$destino_musica/$ext"
                 if [ ! -d "$dir" ]; then
                  mkdir -p "$dir"
                  echo "El subdirectorio se ha creado con éxito $dir"
                 else
                  echo "El subdirectorio $dir ya existe"
                 fi
         done

         echo
         read -p "¿Quieres ordenar los archivos por extensión en sus carpetas? (s/n): " ordenar



         if [[ "$ordenar" =~ ^[sS]$ ]]; then
                 echo "Ordenando la música por extension en sus carpetas correspondientes..."

                 for archivo in "$destino_musica"/*; do
                  if [[ -f "$archivo" ]]; then
                   ext=$(echo "${archivo##*.}" | tr '[:upper:]' '[:lower:]')
                   for e in "${extensiones[@]}"; do
                    if [[ "$ext" == "$e" ]]; then
                     mv "$archivo" "$destino_musica/$ext/"
                     echo " Movido: $(basename "$archivo") a $ext/"
                    fi
                   done
                  fi
                 done

                 echo "Toda la múscia ha sido movida por su extensión con éxito"
         else

                 echo "Ordenación por extensión ha sido cancelada."
         fi
 else
         echo "Cancelación de subdirectorios ha sido cancelada."
 fi
 }


# --------------------------- MENÚ PRINCIPAL ---------------------------

while true; do
  echo
  echo "██████╗  █████╗ ██╗    ██╗███╗   ██╗"
  echo "██╔══██╗██╔══██╗██║    ██║████╗  ██║"
  echo "██████╔╝███████║██║ █╗ ██║██╔██╗ ██║"
  echo "██╔═══╝ ██╔══██║██║███╗██║██║╚██╗██║"
  echo "██║     ██║  ██║╚███╔███╔╝██║ ╚████║"
  echo "╚═╝     ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝  ╚═══╝"
  echo "              By Manuel              "
  echo
  echo "1) Organizar Imágenes"
  echo "2) Organizar Documentos"
  echo "3) Organizar Vídeos"
  echo "4) Organizar Música"
  echo "5) Organizar todo"
  echo "6) Salir"
  echo
  read -p "Elige una de las opciones: " opcion

  case $opcion in
    1) mover_imagenes
	ordenar_imagenes_por_extension ;;
    2) mover_documentos
	ordenar_documentos_por_extension ;;
    3) mover_videos
	ordenar_videos_por_extension ;;
    4) mover_musica
	ordenar_musica_por_extension ;;
    5)
      mover_imagenes
	ordenar_imagenes_por_extension
      mover_documentos
	ordenar_documentos_por_extension
      mover_videos
	ordenar_videos_por_extension
      mover_musica
	ordenar_musica_por_extension
    ;;
    6)
      echo "Saliendo..."
      break
    ;;
    *)
      echo "Opción no válida"
    ;;
  esac
done
