# Altere o servidor de download em: Programas e Atualizações -> Baixar de -> Outro -> Selecionar Melhor Servidor

echo "---------------"
echo "Instalando o VLC"
echo "---------------"

sudo apt-get install -y vlc


echo "---------------"
echo "Instalando o Insomnia"
echo "---------------"

#Link: https://insomnia.rest/download
sudo dpkg -i Insomnia.Core-2021.7.2.deb


echo "---------------"
echo "Instalando o Gnome-Tweak" #para exibição da data completa no painel superior
echo "---------------"

sudo apt install -y gnome-tweak-tool


echo "---------------"
echo "Instalando o Virtualbox"
echo "---------------"

#Link: https://www.virtualbox.org/wiki/Linux_Downloads
sudo dpkg -i virtualbox-6.1_6.1.18-142142~Ubuntu~bionic_amd64.deb


echo "---------------"
echo "Instalando o Mendeley desktop"
echo "---------------"

wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest.deb
sudo apt-get install -y gconf2
sudo dpkg -i mendeleydesktop-latest.deb


echo "---------------"
echo "Instalando o 4kdownloader"
echo "---------------"

#Link: https://www.4kdownload.com/pt-br/products/product-videodownloader
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
sudo apt-get install -y sublime-text


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
sudo apt  install docker-compose


echo "---------------"
echo "Instalando o Jupyter"
echo "---------------"

sudo apt install -y jupyter-notebook


echo "---------------"
echo "Instalando o Wine"
echo "---------------"

#Opção 1
sudo apt install -y wine-stable

#Opção 2
wget -nc https://dl.winehq.org/wine-builds/winehq.key | sudo apt-key add -
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

#Substitua artful pelo nome do SO: https://wiki.ubuntu.com/DevelopmentCodeNames
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ artful main' 

sudo apt-get update
sudo apt-get install -y --install-recommends winehq-stable


echo "---------------"
echo "Instalando o Lamp"
echo "---------------"

sudo apt-get install -y lamp-server^
sudo apt-get install -y apache2 mysql-server php php-mysql libapache2-mod-php
sudo apt-get install -y phpmyadmin
sudo echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/test.php
sudo /etc/init.d/apache2 restart


echo "---------------"
echo "Instalando o NetTools"
echo "---------------"

sudo apt-get install net-tools


echo "---------------"
echo "Instalando o Smartgit"
echo "---------------"

#Link: https://www.syntevo.com/smartgit/download/
#Talvez precise disso: sudo apt install libcurl4
tar -xf smartgit-linux-21_2_0.tar.gz
sudo mv smartgit/ /opt/
echo "[Desktop Entry]" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Type=Application" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Version=21.2.0" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Name=Smartgit" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Comment=Gerenciador de repositórios Git" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Icon=/opt/smartgit/bin/smartgit-64.png" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Exec=/opt/smartgit/bin/smartgit.sh" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Terminal=false" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "StartupNotify=false" >> /home/guilherme/.local/share/applications/smartgit.desktop && echo "Categories=Development;" >> /home/guilherme/.local/share/applications/smartgit.desktop
sudo chmod 777 /home/guilherme/.local/share/applications/smartgit.desktop 


echo "---------------"
echo "Instalando pacotes do Latex"
echo "---------------"

sudo apt install -y texlive-latex-extra
sudo apt-get install -y texlive-full


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
sudo apt-get install -y aspell-pt-br


echo "---------------"
echo "Instalando o NetBeans"
echo "---------------"

wget -nc https://archive.org/download/jdk-8u111-nb-8_2/jdk-8u111-nb-8_2-linux-x64.sh
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

#Link: https://www.google.pt/intl/pt-PT/chrome/?brand=ISCS&gclsrc=aw.ds&gclid=Cj0KCQiAqvaNBhDLARIsAH1Pq51tLtg_ptZ1KBp-VO0kqBkcVsz3ziuPV-XMPm7wQPpRH3eFyV0QFGIaArqPEALw_wcB
sudo dpkg -i google-chrome-stable_current_amd64.deb


echo "---------------"
echo "Instalando o Nodejs, npm e React Native"
echo "---------------"

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update
sudo apt install -y openjdk-8-jdk
sudo apt install -y nodejs
sudo apt install -y npm
sudo npm install -g n
sudo apt install -y autoconf automake build-essential libtool pkg-config libssl-dev python-dev
sudo npm install -g react-native-cli
npm install --save --save-exact react-native


echo "---------------"
echo "Instalando o Expo"
echo "---------------"

sudo npm install --global expo-cli


echo "---------------"
echo "Instalando/Desinstalando nodeJS, npm e React Native CLI"
echo "---------------"

#Desinstalando:
sudo rm -rf /usr/local/bin/npm /usr/local/share/man/man1/node* ~/.npm
sudo rm -rf /usr/local/lib/node*
sudo rm -rf /usr/local/include/node*
sudo apt-get purge nodejs npm
sudo apt autoremove

#Instalando:
curl -qL https://www.npmjs.com/install.sh | sh #Já logado como root
sudo npm install -g react-native-cli


echo "---------------"
echo "Instalando o Android Studio"
echo "---------------"

sudo snap install android-studio --classic
sudo apt-get install -y lib32z1 lib32stdc++6
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
sudo apt install -y autoconf automake build-essential libtool pkg-config libssl-dev python-dev
echo 256 | sudo tee -a /proc/sys/fs/inotify/max_user_instances
echo 32768 | sudo tee -a /proc/sys/fs/inotify/max_queued_events
echo 65536 | sudo tee -a /proc/sys/fs/inotify/max_user_watches
sudo apt install -y watchman
watchman shutdown-server
sudo chmod 777 /dev/kvm
