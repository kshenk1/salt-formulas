/etc/yum.repos.d/mariadb.repo:
    file.managed:
        - source: salt://repos/mariadb.repo
