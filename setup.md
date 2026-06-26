Crea un entorno virtual de Python ejecutando:

python -m venv venv

Activa el entorno virtual en PowerShell con:

venv\Scripts\Activate.ps1

Cuando el entorno esté activado, deberías ver el prefijo `(venv)` al inicio de la línea del terminal.

A continuación instala las dependencias necesarias con pip:

pip install numpy
pip install sqlalchemy
pip install pandas

Con esto tendrás el entorno listo para trabajar en el reto 