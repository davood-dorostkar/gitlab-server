docker exec -it gitlab grep -i 'password' /etc/gitlab/initial_root_password
docker exec -it gitlab gitlab-rake "gitlab:password:reset[root]"