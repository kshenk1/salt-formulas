apache:
    pkg:
        - name: {{ salt['pillar.get']('pkgs:apache', '') }}
        - installed
    service:
        - running
        - name: {{ salt['pillar.get']('pkgs:apache', '') }}