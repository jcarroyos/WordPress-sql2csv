# WordPress sql2csv

![data-transformation](https://github.com/user-attachments/assets/89f23bef-c5f6-4dab-b917-2497bf71aa2c)

Este código es una herramienta  para la migración de datos de WordPress, extrae los posts de la base de datos y los convierte a formato CSV. Esta conversión permite visualizar la información en una estructura tabular más organizada y accesible, facilitando su posterior procesamiento o importación a otros sistemas.

- **Propósito**: Extrae información de la tabla `wp_posts` de un archivo SQL de WordPress y la guarda en formato CSV
- **Proceso**:
  - Lee un archivo SQL completo
  - Busca específicamente los datos de la tabla `wp_posts`
  - Separa la información en filas individuales
  - Maneja correctamente el texto entre comillas
  - Crea un archivo CSV con encabezados adecuados
  - Ejecuta otro script (`clean_csv.py`) para limpiar los datos
