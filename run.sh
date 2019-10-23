# k3s install and developer association
sudo wget -O /home/developer/k3s https://github.com/rancher/k3s/releases/download/v0.10.0/k3s
sudo chmod +x /home/developer/k3s
sudo chown developer /home/developer/k3s

# Make sure BashRC profile exists
FILE=/home/developer/.bashrc
if [ -f "$FILE" ]; then
    # k3s add to path
    sudo echo "export PATH=/home/developer:$PATH" >> /home/developer/.bashrc
else 
    sudo touch /home/developer/.bashrc
    sudo echo "export PATH=/home/developer:$PATH" >> /home/developer/.bashrc
fi

# k3s add to path
sudo echo "export PATH=/home/developer:$PATH" >> /home/developer/.bashrc
