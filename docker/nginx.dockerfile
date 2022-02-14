FROM nginx:latest
#LABEL Diego Gmach Leal
#COPY /public /var/www/public
#COPY /docker/config/nginx.conf /etc/nginx/nginx.conf
#RUN chmod 755 -R /var/www/public
#EXPOSE 80 443
#ENTRYPOINT ["nginx"]
# Parametros extras para o entrypoint
#CMD ["-g", "daemon off;"]

RUN rm /etc/nginx/conf.d/*

# Copy config files
# *.conf files in conf.d/ dir get included in main config
COPY ./nginx.conf /etc/nginx/conf.d/

# Expose the listening port
EXPOSE 80

# Launch NGINX
CMD [ "nginx", "-g", "daemon off;" ]