pkgs:
    {% if grains['os_family'] == 'RedHat' %}
    apache: httpd
    vim: vim-enhanced
    mariadb_galera_server: MariaDB-Galera-server
    mariadb_client: MariaDB-client
    galera: galera
    {% elif grains['os_family'] == 'Debian' %}
    apache: apache2
    vim: vim
    {% elif grains['os_family'] == 'Arch' %}
    apache: apache
    vim: vim
    {% endif %}
