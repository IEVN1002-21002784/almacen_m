Este repositorio contiene el desarrollo de la **Evaluación Técnica Castores 2024** para el puesto de **Desarrollador**. Incluye scripts SQL, aplicación en Python con Flask y documentación en PDF.



Datos del proyecto

- IDE utilizado: Visual Studio Code (versión 1.103.2)  
- Lenguaje de programación: Python 3.10  
- Framework: Flask  
- DBMS utilizado: SQL Server 2019  
- Base de datos: Almacen_Castores  


Pasos para correr la aplicación

1. Descargar el proyecto
Puedes descargarlo en formato .zip desde GitHub o clonarlo con Git.
Después, abre la carpeta del proyecto:
cd almacen_m

2. Crear y activar entorno virtual (Windows, cmd):
python -m venv venv
venv\Scripts\activate

3. Instalar dependencias
Dentro del entorno virtual instala los paquetes necesarios:
pip install -r requirements.txt

4. Configurar la conexión a la base de datos
Edita el archivo config.py y coloca los datos de tu servidor SQL Server:

Opción 1: Con autenticación de Windows
SERVER = "TU_SERVIDOR"
DATABASE = "Almacen_Castores"
DRIVER = "ODBC Driver 17 for SQL Server"
SQLALCHEMY_DATABASE_URI = (
    f"mssql+pyodbc://@{SERVER}/{DATABASE}?driver={DRIVER}&trusted_connection=yes"
)


Opción 2: Con usuario y contraseña (ejemplo con sa)
SERVER = "TU_SERVIDOR"
DATABASE = "Almacen_Castores"
DRIVER = "ODBC Driver 17 for SQL Server"
SQLALCHEMY_DATABASE_URI = (
    f"mssql+pyodbc://sa:TUPASSWORD@{SERVER}/{DATABASE}?driver={DRIVER}"
)



5. Iniciar la aplicación
Ejecuta el proyecto con:
python app.py
La aplicación se ejecutará por defecto en:
http://127.0.0.1:5000/login

