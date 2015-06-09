FROM nginx:1.7

MAINTAINER Jesus Macias Portela <jmacias@solidgear.es>
#Thanks to Container Solutions <info@container-solutions.com>

COPY default.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
