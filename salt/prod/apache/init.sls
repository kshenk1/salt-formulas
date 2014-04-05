apache:
    pkg: {{ salt['pillar.get']('pkgs:apache', '') }}
        - installed
    service:
        - running