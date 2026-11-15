FROM nginx:alpine
COPY index.html board.jpg icon.svg manifest.webmanifest icon-192.png icon-512.png icon-maskable-512.png apple-touch-icon.png /usr/share/nginx/html/
EXPOSE 80
