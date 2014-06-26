{% set base_user = pillar['users']['base_user'] %}
{% set programming_dir = pillar['programming_dir'] %}


programming_dir:
  file.directory:
    - name: {{ programming_dir }}
    - user: {{ base_user }}
    - group: {{ base_user }}
    - dir_mode: 755
    - file_mode: 644

