external_url 'http://49.13.228.90'
gitlab_rails['gitlab_shell_ssh_port'] = 2222
letsencrypt['contact_emails'] = ['dado2hacker@gmail.com'] 
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")
nginx['log_level'] = 'warn'
gitlab_rails['log_level'] = 'warn'
sidekiq['log_level'] = 'warn'
gitlab_shell['log_level'] = 'warn'
gitlab_kas['log_level'] = 'warn'
patroni['log_level'] = 'warn'
spamcheck['log_level'] = 'warn'
registry['log_level'] = "warn"