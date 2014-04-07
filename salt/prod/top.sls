base:
    'mdb*':
        - repos.mariadb-repo
        - mariadb-cluster
    'webserver*':
        - apache
    'mysql*':
        - mysql.server
        - mysql.client

