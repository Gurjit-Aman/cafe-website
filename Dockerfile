FROM nginx:latest
COPY ./cafe-website /usr/share/nginx/html
EXPOSE 80
