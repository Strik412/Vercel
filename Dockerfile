# Dockerfile para servir el sitio web estático con nginx
FROM nginx:alpine

# Copiar los archivos estáticos al directorio de nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Exponer el puerto 80
EXPOSE 80

# nginx se ejecuta automáticamente con la imagen base
CMD ["nginx", "-g", "daemon off;"]
