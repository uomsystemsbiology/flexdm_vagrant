log=/vagrant/temp/install_flexdm.log

echo Getting code from git | tee -a $log
git clone https://bitbucket.org/madisonflannery/flexdm.git ~/flexdm

echo unzipping FlexDM zipfile | tee -a $log
unzip -o ~/flexdm/FlexDM.zip -d ~/flexdm

echo Getting build info from git | tee -a $log
git --git-dir ~/flexdm/.git log --max-count=1 --format=format:"Last Commit: %h%nAuthor: %an%nCommit Date: %ad%n" > /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt

echo Copying shell script to home directory | tee -a $log
sudo cp /vagrant/temp/data/run_experiments.sh /home/sbl/run_experiments.sh
sudo chmod 777 /home/sbl/run_experiments.sh

echo Linking the shell script into the root folder | tee -a $log
sudo ln -sv /home/sbl/run_experiments.sh /run_experiments.sh