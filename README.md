# reto_unidad1_Dylan_Montes

# Proyecto: Reto Unidad 1 — MasterIA Cohorte 7

## Descripción
Este proyecto contiene el desarrollo del reto de la unidad 1, enfocado en el análisis exploratorio y manipulación de datos con Python. Incluye tres notebooks que cubren:

- 01_numpy.ipynb: cálculos y estadísticas básicas usando NumPy.
- 02_sql_discovery.ipynb: carga de datos CSV en SQLite y consultas SQL con pandas y SQLAlchemy.
- 03_pandas_pipeline.ipynb: limpieza, corrección, enriquecimiento y exportación de datos con pandas.

## Requisitos

- Python 3.11
- Entorno virtual de Python (venv)
- Dependencias en requirements.txt

## Instalación

1. Crear el entorno virtual:
   - `python -m venv venv`
2. Activar el entorno:
   - PowerShell: `.
env\Scripts\Activate.ps1`
3. Instalar dependencias:
   - `pip install -r requirements.txt`


## Ejecución

1. Abrir el proyecto en VS Code.
2. Seleccionar el kernel del entorno virtual.
3. Para cada notebook:
   - Abrir el notebook.
   - Usar `Restart & Run All`.
4. Confirmar que cada notebook se ejecute sin errores y que las celdas produzcan resultados esperados.

## Estructura del proyecto

- notebooks/
  - 01_numpy.ipynb
  - 02_sql_discovery.ipynb
  - 03_pandas_pipeline.ipynb
- data/
  - ventas_techventas.csv
- output/
  - techventas.db
- sql/
  - 02_sql_discovery.sql
- requirements.txt
- setup.md

## Notas

- El notebook 02_sql_discovery.ipynb usa SQLite para crear la base de datos `techventas.db`.
- El notebook 03_pandas_pipeline.ipynb corrige y prepara el dataset, genera métricas y exporta resultados.
- Asegúrate de mantener las rutas relativas al abrir los notebooks desde la carpeta raíz del proyecto.
