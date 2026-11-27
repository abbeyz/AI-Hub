# How AI Works: static course pages served by nginx on port 8080 (Fly.io's default internal port)
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY modules /usr/share/nginx/html/modules
EXPOSE 8080
