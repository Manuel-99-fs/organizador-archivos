# LimpiaDesk
LimpiaDesk es un script en Bash interactivo diseñado para ayudarte a organizar automáticamente los archivos descargados en tu sistema, clasificándolos en carpetas correspondientes según su tipo (imágenes, documentos, vídeos y música). Además, ofrece la opción de ordenar estos archivos en subdirectorios basados en su extensión.

# Características
-Clasificación automática desde la carpeta Descargas (Downloads)
-Organización de:
  Imágenes
  Documentos
  Vídeos
  Música
-Detección del idioma del sistema (Pictures o Imágenes, etc.)
-Creación de subcarpetas por extensión (opcional)
-Interfaz de menú interactiva y visual en terminal
-Funciones separadas para facilitar mantenimiento y escalabilidad

# Estructura de Carpetas
El script detecta automáticamente si estás usando nombres de carpetas en inglés o español para:
-Downloads / Descargas
-Pictures / Imágenes
-Documents / Documentos
-Videos / Vídeos
-Music / Música

# Requisitos
-Bash (v4 o superior recomendado)
-Sistema tipo Unix (Linux, macOS)

# Instalacióm

1. Clona el repositorio o descarga el script:
git clone https://github.com/Manuel-99-fs/organizador-archivos.git

2. Da permisos de ejecución al script:
chmod +x LimpiaDesk.sh

3. Ejecuta el script:
./LimpiaDesk.sh

# Funcionalidades Avanzadas
-Reconocimiento de extensiones comunes para cada tipo de archivo
-Conversión automática de mayúsculas/minúsculas en extensiones
-Menús condicionales para crear subcarpetas por extensión
-Evita sobrescribir carpetas si ya existen
