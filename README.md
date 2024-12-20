docker stop $(docker ps -q) && docker rm $(docker ps -aq)
rm -rf GITLAB_HOME
mkdir -p GITLAB_HOME/{config,data,logs}
touch GITLAB_HOME/{config/.gitkeep,data/.gitkeep,logs/.gitkeep}

docker exec -it gitlab grep -i 'password' /etc/gitlab/initial_root_password
docker exec -it gitlab gitlab-rake "gitlab:password:reset[root]"

ms-vscode.cpptools-extension-pack

gitlab-ctl reconfigure
gitlab-ctl restart

chmod 600 ./root_password

docker stats

df -h /dev/shm