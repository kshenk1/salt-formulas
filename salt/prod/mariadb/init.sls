---
mariadb:
    pkg: 
        - installed
        - name: {{ salt['pillar.get']('packages:mariadb_galera_server', '') }}
        - require:
            - pkg: {{ salt['pillar.get']('packages:mariadb_client', '') }}
            - pkg: {{ salt['pillar.get']('packages:galera', '') }}

{{ salt['pillar.get']('packages:mariadb_client', '') }}:
    pkg:
        - installed

{{ salt['pillar.get']('packages:galera', '') }}:
    pkg:
        - installed
