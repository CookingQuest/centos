yum groupinstall -y "Development Tools"
yum install -y gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel curl-devel
wget https://github.com/git/git/archive/v2.12.2.tar.gz -O git.tar.gz
tar -zxf git.tar.gz
cd git-2.12.2
make configure
./configure --prefix=/usr/local
make install
rm -rf git*
git config --global user.name "Jan Möller"
git config --global user.email "jan.moeller0@gmail.com"

yum -y install docker

git clone https://github.com/CookingQuest/docker.git
