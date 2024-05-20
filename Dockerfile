# Usa la imagen base de Ubuntu
FROM ubuntu:latest

# Instala el paquete necesario para ejecutar un script de Python
RUN apt-get update && apt-get install -y \
    python3

# Copia el script de Hola Mundo al contenedor
COPY hello_world.py /usr/src/app/

# Establece el directorio de trabajo
WORKDIR /usr/src/app/

# Ejecuta el script de Hola Mundo al iniciar el contenedor
CMD ["python3", "hello_world.py"]
