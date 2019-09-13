salt:
  minion:
    conf:
      acceptance_wait_time: 60
      acceptance_wait_time_max: 0
      auth_safemode: false
      auth_timeout: 60
      auth_tries: 7
      autoload_dynamic_modules: true
      cache_jobs: false
      cachedir: /var/cache/salt/minion
      clean_dynamic_modules: true
      color: true
      cython_enable: true
      environment: base
      grains_cache: false
      grains_cache_expiration: 300
      grains_refresh_every: 10
      hash_type: sha512
      ipv6: true
      log_datefmt: '%H:%M:%S'
      log_datefmt_logfile: '%Y-%m-%d %H:%M:%S'
      log_file: /var/log/salt/minion
      log_fmt_console: '%(asctime)s %(colorlevel)s %(colormsg)s [%(name)s]'
      log_fmt_logfile: '%(asctime)s,%(msecs)03.0f %(bracketprocess)s%(bracketname)s%(bracketlevel)s
        %(message)s'
      log_level: info
      log_level_logfile: info
      master: [salt-master.linode.rbkmoney.dev]
      master_alive_interval: 300
      master_port: 4506
      master_type: failover
      multiprocessing: true
      pidfile: /run/salt-minion.pid
      pillar_raise_on_missing: true
      pillarenv: base
      pillarenv_from_saltenv: true
      ping_interval: 5
      pki_dir: /etc/salt/pki/minion
      random_reauth_delay: 60
      rejected_retry: false
      renderer: yaml_jinja
      retry_dns: 0
      root_dir: /
      sock_dir: /run/salt/minion
      state_aggregate: true
      state_output: changes
      state_output_profile: false
      state_verbose: false
      strip_colors: false
      tcp_keepalive: true
      tcp_keepalive_idle: 60
      tcp_keepalive_intvl: 45
      user: root
      verify_env: true
