1: dockerfile to create image
2: configure secrets in github-> settings-> secrets and variables
3: Ensure docker password token has all permissions

Run below command on ec2 instance to configure docker and allow github actions to do executions
-----------------------------------------------------------------------------------------------

sudo dnf update
sudo dnf install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
newgrp docker