yum groupinstall -y "Development Tools"
yum remove -y git
yum install -y gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel curl-devel
wget https://github.com/git/git/archive/v2.12.2.tar.gz -O git.tar.gz
tar -zxf git.tar.gz
cd git-2.12.2
make configure
./configure --prefix=/usr/local
make install
cd ..
rm -rf git*
git config --global user.name "Jan Möller"
git config --global user.email "jan.moeller0@gmail.com"

yum install -y yum-utils
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum-config-manager --enable docker-ce-edge
yum makecache fast && yum install -y docker-ce
systemctl enable docker
systemctl start docker

yum upgrade python*
yum install -y epel-release python-pip && pip install --upgrade pip
pip install docker-compose

git clone https://github.com/CookingQuest/docker.git

rm -f setup.sh
