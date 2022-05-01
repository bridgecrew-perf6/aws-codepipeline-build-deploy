FROM centos:centos7.0.1406
RUN yum -y install httpd
COPY index.html /var/www/html
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
