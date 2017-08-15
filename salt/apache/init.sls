install_apache:
  pkg.installed:
     - name: apache2
  service.running:
     - name apache2
     - enable: True

files:
   file.managed:
     - name: /var/www/html/index.html
     - source: salt://apache/files/index.html
     - user: root
     - group: root
     - mode: 644
     - require:
       - pkg: install_apache
    
