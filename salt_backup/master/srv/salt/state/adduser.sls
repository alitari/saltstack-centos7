user account:
  user.present:
    - name: {{ pillar['user'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['user'] }}