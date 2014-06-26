{% if 'vagrant' in grains['roles'] %}
{% set base_user = "vagrant" %}
{% else %}
{% set base_user = "codeape" %}
{% endif %}

users:
  base_user: {{ base_user }}
  root: root

programming_dir: /home/{{ base_user }}/programming/