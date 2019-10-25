# k3s install and developer association
# sudo wget -O /home/developer/k3s https://github.com/rancher/k3s/releases/download/v0.10.0/k3s
sudo docker pull ciscodevnet/vs-code-iox-client:latest
sudo docker run --privileged --restart always -d -p 8443:8443 -p 6443:6443 ciscodevnet/vs-code-iox-client:latest
#sudo chmod +x /home/developer/k3s
#sudo chown developer /home/developer/k3s
#sudo chgrp developer /home/developer/k3s
sudo usermod -a -G docker developer
#sudo mkdir /var/lib/rancher
#sudo chown developer /var/lib/rancher
#sudo chgrp developer /var/lib/rancher

# Make sure BashRC profile exists
FILE=/home/developer/.bashrc
if [ -f "$FILE" ]; then
    # k3s add to path
    sudo echo "export PATH=/home/developer:$PATH" >> /home/developer/.bashrc
else 
    # add bash profile
    sudo touch /home/developer/.bashrc
    
    # k3s add to path
    sudo echo "export PATH=/home/developer:$PATH" >> /home/developer/.bashrc
fi
