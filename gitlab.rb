external_url 'https://49.13.228.90:10443'
gitlab_rails['gitlab_shell_ssh_port'] = 2222
letsencrypt['contact_emails'] = ['dado2hacker@gmail.com'] 
gitlab_rails['initial_root_password'] = File.read('/run/secrets/gitlab_root_password').gsub("\n", "")