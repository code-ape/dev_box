

git_install:
  pkg:
    - installed
    - name: {{ pillar['pkgs']['git'] }}

git_configure:
  cmd.run:
    - user: {{ pillar['users']['base_user'] }}
    - name: |
        git config --global user.name "Ferris"
        git config --global user.email ferris@ferrisellis.com
        git config --global push.default simple
    - require:
      - pkg: git_install


# git:
#   archive:
#     - extracted
#     - name: /tmp/
#     - source: salt://git/git-1.9.2.tar.gz
#     - source_hash: md5=609ec9be5251860fd6d10f1c41078890
#     - archive_format: tar
#     - tar_options: z
#     - if_missing: /tmp/git-1.9.2/
#   cmd.run:
#     - cwd: /tmp/git-1.9.2
#     - name: |
#         if hash git 2>/dev/null; then
#           echo
#         else
#           date "$@"
#         fi
#         make prefix=/usr/local all
#         sudo make prefix=/usr/local install
#     - require:
#       - git_dependencies
#       - git.archive

# git_dependencies:
#   pkg.installed:
#     - pkgs:
#       - libcurl-devel
#       - expat-devel
#       - gettext-devel
#       - openssl-devel
#       - zlib-devel
#       - gcc
#       - perl-ExtUtils-MakeMaker


