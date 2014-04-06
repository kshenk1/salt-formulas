apache:
    pkg:
        - name: {{ salt['pillar.get']('packages:apache', 'httpd') }}
        - installed
    service:
        - name: {{ salt['pillar.get']('packages:apache', 'httpd') }}
        - running
        - require:
            - pkg: apache

/var/www/html/index.html:
    file:
        - managed
        - source: salt://httpd/index.html
        - require:
            - pkg: apache