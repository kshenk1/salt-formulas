apache:
    lookup:
        server: apache2
        service: apache2

        vhostdir: /etc/apache2/sites-available
        confdir: /etc/apache2/conf.d
        confext: .conf
        logdir: /var/log/apache2
        wwwdir: /srv/apache2