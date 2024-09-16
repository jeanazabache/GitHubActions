# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo requirements.txt (si tienes dependencias) y el script a /app
COPY requirements.txt requirements.txt
COPY index.py .

# Instala las dependencias (en este caso, solo Flask)
RUN pip install -r requirements.txt

# Expone el puerto 5000 para Flask
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "index.py"]
