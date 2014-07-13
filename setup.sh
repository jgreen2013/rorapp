sudo apt-get -y update
sudo apt-get -y install apache2 php5 libapache2-mod-php5
sudo service apache2 restart
sudo apt-get -y install curl
\curl -L https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
rvm install ruby --force
rvm use ruby --default
sudo gem install execjs
sudo gem install therubyracer
rvm rubygems current
gem install --no-rdoc --no-ri rails --force
echo "*************************** Install Git ***************************"
sudo apt-get -y install git-core
git config --global color.ui true
git config --global user.name "precise32"
git config --global user.email "precise32@vagrant.com"
echo "*************************** Install MySQL ***************************"
sudo debconf-set-selections <<< 'mysql-server-5.1 mysql-server/root_password password jasper3877'
sudo debconf-set-selections <<< 'mysql-server-5.1 mysql-server/root_password_again password jasper3877'
sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev
sudo apt-get -f -y install
sudo apt-get -y install nodejs
echo "*************************** Ruby Version ***************************"
ruby -v
echo "*************************** Rails Version ***************************"
rails -v
echo "************************** Apache Version **************************"
apache2 -V
echo "Shared Folder located at /vagrant"