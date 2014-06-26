{% set base_user = pillar['users']['base_user'] %}
{% set programming_dir = pillar['programming_dir'] %}

include:
  - programming

go_install:
  pkg:
    - installed
    - name: {{ pillar['pkgs']['go'] }}

go_configure:
  file.append:
    - name: /home/{{ base_user }}/.bash_profile
    - text: |
        export GOPATH={{ programming_dir }}/go
        export GOBIN=$GOPATH/bin
        export PATH=$PATH:$GOBIN
  require:
    - pkg: go_install

{% for file in ['go', 'go/bin', 'go/pkg', 'go/src'] %}
{{ programming_dir }}/{{ file }}:
  file.directory:
    - user: {{ base_user }}
    - group: {{ base_user }}
    - dir_mode: 755
    {% if file == 'bin' %}
    - file_mode: 755
    {% else %}
    - file_mode: 644
    {% endif %}
    - required_in:
      - pgk: go_configure
    - require:
      - file: programming_dir
{% endfor %}