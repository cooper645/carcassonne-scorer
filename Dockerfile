FROM nginx:alpine
COPY index.html board.jpg /usr/share/nginx/html/
EXPOSE 80
