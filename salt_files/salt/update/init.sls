run_system_update:
  cmd.run:
    - user: {{ pillar['users']['base_user'] }}
    - name: sudo yum update -y