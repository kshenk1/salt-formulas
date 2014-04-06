{% if grains['os_family'] == 'RedHat' %}
apache: httpd
mariadb_galera_server: MariaDB-Galera-server
mariadb_client: MariaDB-client
galera: galera
{% elif grains['os_family'] == 'Debian' %}
apache: apache2
{% endif %}