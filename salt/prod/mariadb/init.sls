mariadb:
    pkg: 
        - installed
        - name: {{ salt['pillar.get']('packages:mariadb_galera_server', 'mariadb_server') }}
        - require:
            - pkg: {{ salt['pillar.get']('packages:mariadb_client', 'mariadb_client') }}
            - pkg: {{ salt['pillar.get']('packages:galera', 'galera') }}

{{ salt['pillar.get']('packages:mariadb_client', 'mariadb_client') }}:
    pkg:
        - installed

{{ salt['pillar.get']('packages:galera', 'galera') }}:
    pkg:
        - installed
