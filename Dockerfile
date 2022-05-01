FROM centos:centos7
RUN yum -y install httpd
COPY index.html /var/www/html
ENV AWS_ACCESS_KEY_ID=${ACCESS_ID}
ENV AWS_SECRET_ACCESS_KEY=${SECRET_ACCESS}
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
