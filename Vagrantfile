Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 4
  end

  config.vm.synced_folder "../", "/vagrant"
  config.vm.provision :shell, :inline => <<SCRIPT

# Install docker-engine
# We use the linux-image-extra to enable AUFS storage driver which is much more performant
apt-get update && apt-get install -y software-properties-common
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list
apt-get update && apt-get install -y linux-image-extra-$(uname -r) docker-engine
gpasswd -a vagrant docker
cat <<EOF > /etc/default/docker
DOCKER_OPTS="--storage-driver=aufs"
EOF
service docker restart
SCRIPT
end
