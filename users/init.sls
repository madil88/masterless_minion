apache2:
  package.installed:
     - name: apache2
  service.running:
     - name apache2
     - enable: True

files:
   file.managed:
     - name: /var/www/html/index.html
     - source: salt://apache/files/index.php
     - user: root
     - group: root
     - mode: 644
     - require:
       - pkg: apache2
    
