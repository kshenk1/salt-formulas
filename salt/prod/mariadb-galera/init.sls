mariadb:
    pkg: 
        - installed
        - name: {{ salt['pillar.get']('pkgs:mariadb_galera_server', '') }}
        - require:
            - pkg: {{ salt['pillar.get']('pkgs:mariadb_client', '') }}
            - pkg: {{ salt['pillar.get']('pkgs:galera', '') }}

{{ salt['pillar.get']('pkgs:mariadb_client', '') }}:
    pkg:
        - installed

{{ salt['pillar.get']('pkgs:galera', '') }}:
    pkg:
        - installed