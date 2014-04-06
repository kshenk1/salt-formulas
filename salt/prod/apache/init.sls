{% from "apache/map.jinja" import apache with context %}

apache:
    pkg:
        - name: {{ apache.server }}
        - installed
    service:
        - name: {{ apache.service }}
        - running
        - require:
            - pkg: apache

{{ apache.wwwdir }}/index.html:
    file:
        - managed
        - source: salt://apache/index.html
        - require:
            - pkg: apache