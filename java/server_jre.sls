{% set java = pillar.get('java', {}) -%}
{% set jre = java.get('jre') -%}

server_jre:
  pkg.installed:
    - source: {{ jre['source'] }}