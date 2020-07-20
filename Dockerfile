FROM webdevops/php-apache:7.4

# want rsvg support too
RUN apt-get update
RUN apt-get install -y librsvg2-bin

#restart apache
RUN service apache2 restart

# export ports
EXPOSE 80 443 
