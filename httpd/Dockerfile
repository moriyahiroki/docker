FROM centos:6.8

MAINTAINER HirokiMoriya

RUN yum -y update
RUN yum install -y httpd
RUN cp -p /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.ORG
RUN sed -i -e 's/\#ServerName www.example.com:80/ServerName example-web-server.example.com/g' /etc/httpd/conf/httpd.conf
RUN /etc/init.d/httpd start
RUN echo 'docker test server' > /var/www/html/index.html
RUN chkconfig httpd on
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-DFOREGROUND"]
