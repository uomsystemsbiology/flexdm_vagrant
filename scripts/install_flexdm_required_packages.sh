log=/vagrant/temp/install_flexdm.log

echo Installing packages required for FlexDM | tee -a $log

#wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
#sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu precise-getdeb apps" >> /etc/apt/sources.list.d/getdeb.list'

sudo apt-get -y update 
sudo apt-get -y install default-jre
#sudo apt-get -y autoremove
#sudo apt-get -y install --no-install-recommends tex-common texlive-base texlive-base-bin texlive-font-utils texlive-latex-extra

echo Completed package installation | tee -a $log
