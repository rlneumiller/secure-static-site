FROM nginx:alpine

# Remove default config and use a basic one
RUN rm /etc/nginx/conf.d/default.conf


COPY site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf


CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
