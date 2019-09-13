salt:
  master:
    conf:
      client_acl_blacklist:
        users: ['^(?!sudo_|root$).*$']
      color: true
      cython_enable: true
      enable_gpu_grains: false
      failhard: false
      file_buffer_size: 1048576
      file_recv: false
      hash_type: sha512
      interface: '::'
      ipv6: true
      jinja_lstrip_blocks: true
      jinja_trim_blocks: true
      job_cache: true
      keep_jobs: 12
      key_cache: sched
      key_logfile: /var/log/salt/key
      log_datefmt: '%H:%M:%S'
      log_datefmt_logfile: '%Y-%m-%d %H:%M:%S'
      log_file: /var/log/salt/master
      log_fmt_console: '%(asctime)s %(colorlevel)s %(colormsg)s [%(name)s]'
      log_fmt_logfile: '%(asctime)s,%(msecs)03.0f %(bracketprocess)s%(bracketname)s%(bracketlevel)s
        %(message)s'
      log_level: info
      log_level_logfile: info
      loop_interval: 60
      minion_data_cache: true
      order_masters: true
      pidfile: /run/salt-master.pid
      pillar_raise_on_missing: true
      pillarenv_from_saltenv: true
      publish_port: 4505
      renderer: yaml_jinja
      ret_port: 4506
      sign_pub_messages: true
      sock_dir: /run/salt/master
      state_output: changes
      state_top_saltenv: base
      state_verbose: false
      timeout: 15
      token_expire: 43200
      top_file_merging_strategy: same
      user: root
      verify_env: true
      worker_threads: 4
      yaml_utf8: true
  repos:
    extra:
      common: 
        default-branch: master
        remote: 'git+ssh://git@github.com/rbkmoney/salt-common'
    main: 
      name: rbkmoney-infra
      remote: 'git+ssh://git@github.com/rbkmoney/rbkmoney-infra'
