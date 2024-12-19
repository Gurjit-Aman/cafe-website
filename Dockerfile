FROM nginx
COPY ./cafe-website /usr/share/nginx/html
EXPOSE 80
