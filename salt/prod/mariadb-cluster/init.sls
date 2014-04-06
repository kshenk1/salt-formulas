{% from "mariadb-cluster/map.jinja" import mariadb with context %}

mariadb-cluster:
    pkg: 
        - installed
        - name: {{ mariadb.galera_server }}
        - require:
            - pkg: {{ mariadb.client }}
            - pkg: {{ mariadb.galera }}

{{ mariadb.client }}:
    pkg:
        - installed

{{ mariadb.galera }}:
    pkg:
        - installed
