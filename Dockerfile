# How AI Works: static course pages served by nginx (Fly.io static-site pattern)
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY modules /usr/share/nginx/html/modules
