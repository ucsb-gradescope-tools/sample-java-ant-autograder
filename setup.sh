apt-get -y update
apt-get -y install openjdk-8-jdk
apt-get -y install maven
apt-get -y install ant
apt-get -y install bash

# The following lines are to make sure we can install packages from maven
# See https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1396760
# and https://github.com/docker-library/openjdk/issues/19#issuecomment-70546872

apt-get -y install --reinstall ca-certificates-java
update-ca-certificates -f
