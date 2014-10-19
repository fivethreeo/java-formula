{% set java = pillar.get('java', {}) -%}
{% set jre = java.get('jre') -%}

server_jre:
  pkg.installed:
    - sources:
      - oracle-java7-jre: {{ jre['source'] }}