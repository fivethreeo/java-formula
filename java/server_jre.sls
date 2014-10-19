{% set java = pillar.get('java', {}) -%}
{% set jre = java.get('jre') -%}

server_jre_tar:
  pkg.installed:
    - source: {{ jre['source'] }}