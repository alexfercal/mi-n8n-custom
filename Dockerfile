# Usamos la imagen oficial (que ahora está basada en Debian)
FROM n8nio/n8n:latest

# Cambiamos a root para instalar
USER root

# Actualizamos repositorios e instalamos FFmpeg usando apt-get
# El 'rm -rf' al final es para limpiar y que la imagen no pese tanto
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Importante: Volver al usuario node por seguridad
USER node
