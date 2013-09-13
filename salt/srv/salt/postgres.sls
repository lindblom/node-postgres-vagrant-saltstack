base:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main
    - key_url: http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc
    - require_in:
      - pkg: postgresql-9.3

postgresql-9.3:
  pkg:
    - installed

postgresql:
  service:
    - running
    - require:
      - pkg: postgresql-9.3