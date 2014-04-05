apache:
    pkg:
        - name: {{ salt['pillar.get']('pkgs:apache', '') }}
        - installed
    service:
        - running