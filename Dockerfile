FROM nginx:alpine

LABEL maintainer="Alberto Roura mail@albertoroura.com"

RUN echo "server{listen 80;location /{return 200 '{\"statusCode\":503,\"success\":true,\"body\":{\"data\":\"MAINTENANCE_MODE\"}}';add_header Content-Type: application/json;}}" > /etc/nginx/conf.d/default.conf
