httpd:
    pkg:
        - installed
    service:
        - running
        - require:
            - pkg: httpd

/var/www/html/index.html:
    file:
        - managed
        - source: salt://httpd/index.html
        - require:
            - pkg: httpd