# 1. Heredamos de la imagen oficial de n8n (puedes fijar una versión si prefieres, ej: n8n:1.27.0)
FROM n8nio/n8n:stable

# 2. Cambiamos a usuario root para tener permisos de instalación
USER root

# 3. Instalamos FFmpeg (la bandera --no-cache mantiene la imagen ligera)
RUN apk add --update --no-cache ffmpeg

# 4. (Opcional) Instalar fuentes si necesitas escribir texto en imágenes
# RUN apk add --no-cache ttf-freefont

# 5. IMPORTANTE: Volver al usuario 'node' por seguridad y permisos de n8n
USER node
