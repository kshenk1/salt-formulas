{% if grains['os'] == 'RedHat' %}
apache: httpd
mariadb_galera_server: MariaDB-Galera-server
mariadb_client: MariaDB-client
galera: galera
{% elif grains['os'] == 'Debian' %}
apache: apache2
{% endif %}