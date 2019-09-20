gentoo:
  portage:
    packages:
      sys-apps/lm_sensors:
        use: -sensord
      app-admin/consul:
        accept_keywords: ~*
        version: "<1.5"
      app-admin/filebeat:
        version: '>=6.3'
      app-admin/consul-template:
        accept_keywords: ~*
        version: ">=0.18.0"
      app-admin/salt:
        accept_keywords: ~*
        use: [portage, python_targets_python2_7]
        version: 2017*
      app-admin/sudo:
        use: offensive
      app-admin/syslog-ng:
        use: [caps, pacct, json]
      app-admin/uwsgitop:
        accept_keywords: ~*        
      app-antivirus/clamav:
        version: ">=0.99"
        use: [bzip2, clamdtop, iconv]
      app-editors/emacs:
        version: '>=26.1:26'
      app-emacs/yaml-mode:
        accept_keywords: ~*
        version: '>=0.0.13'
      app-emulation/docker-registry:
        accept_keywords: ~*
      app-emulation/docker-gc:
        accept_keywords: '**'
        version: '=9999'
      app-emulation/docker:
        version: =18.09.5
        use: [-aufs, -btrfs, container-init, overlay, seccomp]
      app-emulation/containerd:
        version: =1.2.5
        use: -btrfs
      app-emulation/runc:
        version: =1.0.0_rc6_p20190216
        use: seccomp
      app-emulation/docker-proxy:
        version: =0.8.0_p20190405
      app-eselect/eselect-ruby:
        accept_keywords: ~*
      app-metrics/collectd:
        use: ['udev', 'xfs', 'python_single_target_python2_7', '-python_single_target_python3_6', 'collectd_plugins_threshold']
      app-misc/elasticsearch:
        accept_keywords: ~*
        version: "<=7.0"
      app-misc/mc:
        use: -slang
      app-portage/layman:
        use: sync-plugin-portage
      dev-db/barman:
        accept_keywords: ~*
      dev-db/clickhouse:
        accept_keywords: ~*
        version: "~:0/stable"
        use: [kafka, tools, -mysql, -mongodb]
      dev-db/mariadb:
        use: [backup, innodb-lz4, innodb-lzo, jemalloc, odbc, openssl, profiling, server]
      dev-db/riak:
        accept_keywords: ~*
      dev-db/sqlite:
        use: secure-delete
      dev-go/go-tools:
        accept_keywords: ~*
      dev-go/gox:
        accept_keywords: ~*
      dev-java/icedtea-bin:
        use: [headless-awt, -alsa, -cups, -gtk]
      dev-java/openjdk-bin:
        accept_keywords: ~*
      dev-lang/erlang:
        use: [hipe, kpoll, odbc, sctp, smp, ssl]
      dev-libs/capnproto:
        accept_keywords: ~*
      dev-libs/jemalloc:
        use: stats
      dev-libs/libpcre:
        use: jit
      dev-libs/libuv:
        accept_keywords: ~*
        version: 1.24*
      dev-libs/openssl:
        accept_keywords: ~*
        use: [-sslv3, tls-heartbeat]
        version: ':0/1.1'
      dev-libs/poco:
        use: [-mysql, -mariadb, -mongodb]
      dev-python/carbon:
        accept_keywords: ~*
      dev-python/django-tagging:
        accept_keywords: ~*
      dev-python/txAMQP:
        accept_keywords: ~*
      dev-python/whisper:
        accept_keywords: ~*
      dev-python/sleekxmpp:
        accept_keywords: ~*
      dev-ruby/did_you_mean:
        accept_keywords: ~*
      dev-ruby/domain_name:
        accept_keywords: ~*
      dev-ruby/msgpack:
        accept_keywords: ~*
      dev-ruby/rdoc:
        accept_keywords: ~*
      dev-ruby/unf_ext:
        accept_keywords: ~*
      dev-util/jenkins-bin:
        accept_keywords: ~*
      dev-vcs/git:
        use: [-gpg, -pcre-jit]
      dev-vcs/git-lfs:
        use: -docs
      mail-mta/postfix:
        version: ">=3.3.1-r1"
        use: [berkdb, -dovecot-sasl, -memcached, -mysql]
      mail-filter/opendkim:
        use: unbound
      media-fonts/terminus-font:
        use: [-pcf, psf, center-tilde, -ru-g, -a-like-o, distinct-l, ru-dv, ru-i]
      net-analyzer/check_consul:
        accept_keywords: ~*
      net-analyzer/graphite-web:
        accept_keywords: ~*
        use: [carbon, memcached, mysql]
      net-analyzer/masscan:
        accept_keywords: ~*
      net-analyzer/monitoring-plugins:
        use: [dns, fping, snmp, ssh, ssl] # extend
        version: "2.1.2::rbkmoney"
        accept_keywords: "~*"
      media-libs/gd:
        use: [jpeg, png, fontconfig, truetype, tiff, webp]
      net-analyzer/nagios-core:
        use: [web, perl] # extend
        version: ">=4.4.3"
        accept_keywords: "~*"
      net-analyzer/nagios-bird:
        accept_keywords: "**"
      net-analyzer/nagios-check_linux_bonding:
        accept_keywords: "~*"
      net-analyzer/net-snmp:
        accept_keywords: ~*
        version: 5.8*
      net-analyzer/suricata:
        accept_keywords: ~*
        use: [nfqueue, rules, control-socket]
      net-analyzer/riak_nagios:
        version: ">=9998-r1"
        accept_keywords: "~*"
      net-dns/c-ares:
        accept_keywords: ~*
        version: 1.15*
      net-dns/ldns-utils:
        use: [dane, ecdsa, ssl]
      net-dns/unbound:
        use: [dnscrypt, ecdsa]
        accept_keywords: ~*
        version: 1.9.3*
      net-firewall/iptables:
        use: [conntrack, nftables]
      net-libs/http-parser:
        accept_keywords: ~*
        version: 2.9*
      net-libs/libhtp:
        accept_keywords: ~*
      net-libs/nghttp2:
        accept_keywords: ~*
        version: 1.37*
      net-libs/nodejs:
        accept_keywords: ~*
        version: 10*
      net-libs/ldns:
        use: [dane, ecdsa]
      net-misc/bird:
        accept_keywords: ~*
      net-misc/curl:
        use: [adns, ssl, -threads]
      net-misc/kafka-bin:
        accept_keywords: ~*
        version: "2.1.1"
      net-misc/lldpd:
        use: [cdp, snmp]
      net-misc/openssh:
        use: [hpn, ldns, sctp]
      net-vpn/ipsec-tools:
        accept_keywords: ~*
      net-p2p/bitcoind:
        accept_keywords: ~*
        use: [bitcoin_policy_cltv, bitcoin_policy_cpfp, bitcoin_policy_rbf, bitcoin_policy_spamfilter, ljr, logrotate, wallet]
      'sec-policy/*':
        accept_keywords: ~*
      sec-policy/selinux-base:
        use: -unconfined
      sec-policy/selinux-base-policy:
        use: -unconfined
      sys-apps/ipmitool:
        accept_keywords: ~*
        version: 1.8.1*
      sys-apps/irqbalance:
        use: numa
      sys-apps/portage:
        use: [-rsync-verify, xattr]
      sys-apps/util-linux:
        use: tty-helpers
      sys-boot/grub:
        use: [grub_platforms_efi-64, grub_platforms_pc]
      sys-cluster/ceph:
        use: [radosgw, tcmalloc, xfs]
        version: =12.2.8-r1
      sys-cluster/zookeeper-bin:
        accept_keywords: ~*
        version: '>=3.4'
      sys-cluster/keepalived:
        use: [ipv6, snmp]
      sys-devel/binutils:
        use: [cxx, multitarget]
      sys-devel/binutils-config:
        version: ">=5-r4"
      sys-devel/gcc:
        use: [go, vtv, graphite]
      sys-fs/cryptsetup:
        use: [-luks1_default, -gcrypt, kernel, -libressl, -nettle, -openssl]
        accept_keywords: ~*
      sys-libs/glibc:
        use: [audit, caps, -docs, multiarch]
      sys-libs/libseccomp:
        use: static-libs
      sys-libs/pam:
        use: ['audit','-berkdb','cracklib','filecaps']
        version: '>=1.3.0-r2'
      sys-auth/pambase:
        use: ['cracklib','nullok','sha512']
      sys-process/audit:
        use: python
      sys-process/ctop:
        accept_keywords: ~*
      www-apps/grafana-bin:
        accept_keywords: ~*
      www-apps/kibana-bin:
        accept_keywords: ~*
      www-plugins/nginx-module-wallarm-rbkmoney:
        use: collectd
      www-servers/nginx:
        use: [aio, -luajit, pcre-jit, nginx_modules_http_auth_basic, nginx_modules_http_autoindex,
              nginx_modules_http_browser, nginx_modules_http_charset, nginx_modules_http_empty_gif,
              nginx_modules_http_fastcgi, nginx_modules_http_geo, nginx_modules_http_geoip,
              nginx_modules_http_gzip, nginx_modules_http_gzip_static, nginx_modules_http_limit_conn,
              nginx_modules_http_limit_req, -nginx_modules_http_lua, nginx_modules_http_map,
              nginx_modules_http_memcached, nginx_modules_http_proxy, nginx_modules_http_realip,
              nginx_modules_http_referer, nginx_modules_http_rewrite, nginx_modules_http_scgi,
              nginx_modules_http_split_clients, nginx_modules_http_ssi, nginx_modules_http_stub_status,
              nginx_modules_http_upstream_check, nginx_modules_http_upstream_ip_hash, nginx_modules_http_upstream_keepalive,
              nginx_modules_http_upstream_least_conn, nginx_modules_http_userid, nginx_modules_http_uwsgi,
              nginx_modules_mail_imap, nginx_modules_mail_pop3, nginx_modules_mail_smtp]
      www-servers/uwsgi:
        use: [caps, cgi, embedded, jemalloc, lua, pcre, perl, python, python_gevent, -python_asyncio, -ruby, routing, ssl, xml, zeromq] 
      x11-libs/cairo:
        use: xcb
      x11-libs/gdk-pixbuf:
        use: jpeg
      net-mail/dovecot:
        use: [bzip2, caps, imapc, lz4, mysql, maildir, sieve, managesieve]
      dev-java/java-config:
        version: '>=2.2.0-r3'
      sys-apps/baselayout-java:
        version: '>=0.1.0'
        accept_keywords: ~*
      app-eselect/eselect-java:
        version: '>=0.3.0'
      dev-vcs/gitolite:
        version: ">=3.6.6"
        accept_keywords: ~*
      net-analyzer/openvas:
        version: 10.0.1
        accept_keywords: ~*
        use: [extras, gsa, ospd, postgresql]
      net-analyzer/openvas-libraries:
        accept_keywords: ~*
        use: [extras]
      net-analyzer/openvas-manager:
        accept_keywords: ~*
        use: [extras, postgresql]
      net-analyzer/openvas-scanner:
        accept_keywords: ~*
        use: [extras]
      net-analyzer/ospd:
        accept_keywords: ~*
        use: [extras]
      net-analyzer/greenbone-security-assistant:
        accept_keywords: ~*
        use: [extras]
      'dev-python/dnspython':
        version: "=1.16*"
        accept_keywords: ~*
