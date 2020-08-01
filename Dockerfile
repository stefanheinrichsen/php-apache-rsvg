FROM webdevops/php-apache:7.4

# want rsvg support too
RUN apt-get update
RUN apt-get install -y librsvg2-bin

# enable postfix to be able to send mails
#RUN /opt/docker/bin/usr-bin/docker-service-enable postfix
#RUN mkfifo /var/spool/postfix/public/pickup
#RUN service postfix restart

#restart apache
RUN service apache2 restart

# export ports
EXPOSE 80 443 
