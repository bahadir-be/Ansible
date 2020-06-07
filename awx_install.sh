sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get remove docker docker-engine docker.io containerd runc


apt-cache madison docker-ce

sudo apt-get install docker-ce=5:18.09.5~3-0~ubuntu-bionic docker-ce-cli=5:18.09.5~3-0~ubuntu-bionic containerd.io

sudo apt update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker $USER
sudo systemctl restart docker

# Verify that Docker CE is installed correctly by running the hello-world image, run the commands below:
sudo docker run hello-world


sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version

echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu bionic main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
sudo apt update
sudo apt install ansible
# After installing, you can use the commands below to verify that Ansible is installed and show its version number.

ansible --version

# The commands should output similar lines as shown below



sudo apt install nodejs npm
sudo npm install npm --global
sudo apt install python-pip git pwgen
pip install docker
Next, clone AWX source code from GitHub using the git command.

cd ~/
git clone --depth 50 https://github.com/ansible/awx.git
# Change into the installer folder

cd ~/awx/installer/

# Generate AWX secret key using the commands below. You’ll need this key in the configuration file below:

pwgen -N 1 -s 30

# It should output a strong similar to the one below. Copy and save it somewhere.

vqr6egDqcJpE4VVJ8tMlfAcFrHz7gY

# After that, open the inventory file and add the secret key generated above and save the file.

vi inventory

# Edit the highlighted line and save the file



ansible-playbook -i inventory install.yml


# When done, open your browser and browse to the server hostname or IP address.

# http://localhost
# That should bring up AWX portal to login.
