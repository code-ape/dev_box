pkgs:
  {% if grains['os_family'] == 'RedHat' %}
  go: golang
  git: git
  pip: python-pip
  pip3: python3-pip
  python: python
  python3: python3
  tree: tree
  vim: vim-enhanced
  {% elif grains['os_family'] == 'Debian' %}
  go: golang
  git: git
  pip: python-pip
  pip3: python3-pip
  python: python
  python3: python3
  tree: tree
  vim: vim
  {% elif grains['os'] == 'Arch' %}
  go: golang
  git: git
  pip: python-pip
  pip3: python3-pip
  python: python
  python3: python3
  tree: tree
  vim: vim
  {% endif %}

pip-pkgs:
  virtualenv: virtualenv