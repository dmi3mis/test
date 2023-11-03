FROM ubi8/ubi
MAINTAINER dmitrymis@outlook.com
LABEL description="A custom Apache container image based on UBI 8"
RUN dnf install -y httpd && dnf clean all
RUN sed -i 's/Listen 80/Listen 8080/g' /etc/httpd/conf/httpd.conf
RUN echo Hello you are on rh134 course > /var/www/html/index.html
EXPOSE 8080
CMD ["httpd", "-DFOREGROUND"]

