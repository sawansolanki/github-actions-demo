FROM ubuntu

RUN apt-get update

RUN apt-get install nginx -y

RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install apt-utils

COPY index.html /var/www/html/

EXPOSE 80

CMD [“nginx”,”-g”,”daemon off;”]
