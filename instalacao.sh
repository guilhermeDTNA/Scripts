echo "---------------"
echo "Instalando o VLC"
echo "---------------"

sudo apt-get install -y vlc


echo "---------------"
echo "Instalando o Virtualbox"
echo "---------------"


cd ~/Downloads
sudo chmod 777 virtualbox-6.1_6.1.18-142142~Ubuntu~bionic_amd64.deb
sudo dpkg -i virtualbox-6.1_6.1.18-142142~Ubuntu~bionic_amd64.deb


echo "---------------"
echo "Instalando o 4kdownloader"
echo "---------------"


cd ~/Downloads
sudo chmod 777 4kvideodownloader_4.14.2-1_amd64.deb
sudo dpkg -i 4kvideodownloader_4.14.2-1_amd64.deb


echo "---------------"
echo "Instalando o Winff"
echo "---------------"


sudo apt install -y winff


echo "---------------"
echo "Instalando o Vokoscreen"
echo "---------------"


sudo apt update
sudo apt install -y vokoscreen


echo "---------------"
echo "Instalando o Pinta"
echo "---------------"

sudo add-apt-repository ppa:pinta-maintainers/pinta-stable
sudo apt-get update
sudo apt-get install -y pinta


echo "---------------"
echo "Instalando o Sublime Text 3"
echo "---------------"

sudo wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text



echo "---------------"
echo "Instalando o Docker"
echo "---------------"


sudo apt update
sudo apt upgrade
sudo apt install curl
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo systemctl status docker


echo "---------------"
echo "Instalando o Wine"
echo "---------------"


wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
sudo apt update && sudo apt install --install-recommends winehq-stable


#Caso não dê certo os comandos acima, tente esses:

#wget -nc https://dl.winehq.org/wine-builds/winehq.key
#sudo apt-key add winehq.key
#sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/
#sudo apt install --install-recommends winehq-stable

echo "---------------"
echo "Instalando o Lamp"
echo "---------------"

sudo apt-get install -y lamp-server^
sudo apt-get install -y apache2 mysql-server php php-mysql libapache2-mod-php
sudo apt-get install -y phpmyadmin
sudo echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/test.php
sudo /etc/init.d/apache2 restart

echo "---------------"
echo "Instalando o Kile"
echo "---------------"

sudo apt-get update -y
sudo apt-get install -y kile
sudo apt-get install -y texlive-lang-portuguese
sudo apt-get install -y texlive-latex-extra
sudo apt-get install -y texlive-extra-utils texlive-generic-extra
sudo apt-get install -y texlive-math-extra texlive-pictures
sudo apt-get install -y texlive-plain-extra
sudo apt-get install -y latex-beamer
sudo apt-get install -y texlive-publishers texlive-science
sudo apt-get install -y okular


echo "---------------"
echo "Instalando o NetBeans"
echo "---------------"

cd ~/Downloads
sudo chmod 777 jdk-8u111-nb-8_2-linux-x64.sh
./jdk-8u111-nb-8_2-linux-x64.sh



echo "---------------"
echo "Instalando o Dropbox"
echo "---------------"


cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
echo "~/.dropbox-dist/dropboxd" >> ~/dropbox.sh
sudo chmod 777 ~/dropbox.sh


echo "---------------"
echo "Instalando o Chrome"
echo "---------------"


cd ~/Downloads
sudo chmod 777 google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
