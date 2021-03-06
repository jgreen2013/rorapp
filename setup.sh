echo "*************************** Update System ***************************"
sudo apt-get -y update
echo "************************** Install Apache ***************************"
sudo apt-get -y install apache2 php5 libapache2-mod-php5
sudo service apache2 restart
sudo apt-get -y install curl
echo "*************************** Install Ruby ***************************"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -L https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
rvm install ruby --force
rvm use ruby --default
rvm rubygems current
echo "************************** Install Rails ***************************"
gem install --no-rdoc --no-ri rails --force
echo "*************************** Install Git ***************************"
sudo apt-get -y install git-core
git config --global color.ui true
git config --global user.name "precise32"
git config --global user.email "precise32@vagrant.com"
echo "*************************** Install MySQL ***************************"
sudo debconf-set-selections <<< 'mysql-server-5.1 mysql-server/root_password password pass123'
sudo debconf-set-selections <<< 'mysql-server-5.1 mysql-server/root_password_again password pass123'
sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev
sudo apt-get -f -y install
echo "************************* Install Node *****************************"
sudo apt-get -y install python-software-properties
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update
sudo apt-get -y install nodejs
echo " "
echo " "
echo " "
echo " "
echo "********************************************************************"
echo "* Ruby Version                                                     *"
ruby -v
echo "* Rails Version                                                    *"
rails -v
echo "* MySQL Password                                                   *"
echo "pass123"
echo "Shared Folder located at /vagrant"
echo "********************************************************************"
