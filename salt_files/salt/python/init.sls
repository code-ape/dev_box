python-pkgs:
  pkg:
    - installed
    - names:
      - {{ pillar['pkgs']['python'] }}
      - {{ pillar['pkgs']['pip'] }}

pip-pkgs:
  pip.installed:
    - names:
      - {{ pillar['pip-pkgs']['virtualenv'] }}
    - require:
      - pkg: python-pkgs