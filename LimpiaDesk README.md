# LimpiaDesk
LimpiaDesk es un script en Bash interactivo diseñado para ayudarte a organizar automáticamente los archivos descargados en tu sistema, clasificándolos en carpetas correspondientes según su tipo (imágenes, documentos, vídeos y música). Además, ofrece la opción de ordenar estos archivos en subdirectorios basados en su extensión.

# Características
- Clasificación automática desde la carpeta Descargas (Downloads)
- Organización de:
  Imágenes
  Documentos
  Vídeos
  Música
- Detección del idioma del sistema (Pictures o Imágenes, etc.)
- Creación de subcarpetas por extensión (opcional)
- Interfaz de menú interactiva y visual en terminal
- Funciones separadas para facilitar mantenimiento y escalabilidad

# Estructura de Carpetas
El script detecta automáticamente si estás usando nombres de carpetas en inglés o español para:
- Downloads / Descargas
- Pictures / Imágenes
- Documents / Documentos
- Videos / Vídeos
- Music / Música

# Requisitos
- Bash (v4 o superior recomendado)
- Sistema tipo Unix (Linux, macOS)

# Instalacióm

1. Clona el repositorio o descarga el script:
git clone https://github.com/Manuel-99-fs/organizador-archivos.git

2. Da permisos de ejecución al script:
chmod +x LimpiaDesk.sh

3. Ejecuta el script:
./LimpiaDesk.sh

# Funcionalidades Avanzadas
- Reconocimiento de extensiones comunes para cada tipo de archivo
- Conversión automática de mayúsculas/minúsculas en extensiones
- Menús condicionales para crear subcarpetas por extensión
- Evita sobrescribir carpetas si ya existen


# ---------------------------------------------------------------------------------------------------------------

# Generador_de_extensiones.sh
Este pequeño script en Bash permite crear archivos vacíos de diferentes tipos (imágenes, documentos, vídeos y música) con múltiples extensiones. Es ideal para probar el funcionamiento del organizador LimpiaDesk u otros scripts de clasificación de archivos.

- Este script NO genera contenido real, solo archivos vacíos con distintas extensiones para simular un entorno de trabajo realista.

- ¿Para qué sirve?

Para ayudarte a probar herramientas como LimpiaDesk, que mueven archivos por tipo o extensión, sin necesidad de descargar archivos reales.

- Recomendación: lo ideal es ejecutar este script directamente desde la carpeta Descargas (~/Downloads), ya que LimpiaDesk está diseñado para buscar y organizar los archivos desde allí. Esto permite una prueba completa y realista del funcionamiento del organizador.
- 
# Tipos de Archivos Soportados
- mágenes: jpg, jpeg, png, gif, bmp, webp, svg, eps, ai, cr2, nef, arw, dng, orf, raw, tiff, tif, ico, heic, heif

- Documentos: doc, docx, xls, xlsx, csv, ods, ppt, pptx, odp, pdf, txt, md, rtf, odt, tex, bib, log, ini, json, xml, yaml, yml

- Vídeos: mp4, mkv, avi, mov, wmv, flv, webm, m4v, ogv, mpg, mpeg, 3gp, 3g2, ts, mts, m2ts, vob, rmvb, divx, amv, svi, f4v, asf, dv, mxf, nsv

-  Música: mp3, wav, flac, aac, ogg, m4a, wma, aiff, alac, opus, amr, mid, midi, ra, ac3, dts, mp2, caf, voc, au, snd, oga, aax, ape, wv
