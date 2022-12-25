echo 'Creating swap partition'
dd if=/dev/zero bs=1M count=1024 of=/mnt/1GiB.swap
chmod 600 /mnt/1GiB.swap
mkswap /mnt/1GiB.swap
swapon /mnt/1GiB.swap
echo ‘/mnt/1GiB.swap swap swap defaults 0 0’ | tee -a /etc/fstab
apt update
apt install curl -y
apt install docker.io -y
echo 'Downloading and isntalling Kasm Workspace'
wget https://kasm-static-content.s3.amazonaws.com/kasm_release_1.12.0.d4fd8a.tar.gz
tar -xf kasm_release*.tar.gz
echo 'This installation will take some time, please be patient. Credentials will be 
posted once complete'
bash kasm_release/install.sh
y
echo 'Installation complete'
hostname -i
echo 'Enter the above ip address in a web browser with :80 at the end to 
access the GUI'
echo 'i.e. 127.0.1.1:80'
