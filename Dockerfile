# base image
FROM nginx:1.17-alpine

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

## overrides nginx defaults
COPY ./nginx-custom.conf /etc/nginx/conf.d/default.conf

# expose port 80
EXPOSE 80