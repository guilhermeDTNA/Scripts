#!/bin/bash
res1=$(date +%s.%N)

echo 'INICIANDO BACKUP'
echo ''
echo 'Desmontando HD externo...'
sudo umount /dev/sdb1
echo 'Montando HS externo em /mnt...'
mkdir /mnt/HD-guilherme
sudo mount /dev/sdb1 /mnt/HD-guilherme/
echo ''
echo '|--------------------------|'
echo '|Copiando Arquivos do Linux|'
echo '|--------------------------|'
echo ''
echo 'Copiando Documentos...'
echo ''
sudo rsync -acv -progress /home/guilherme/Documentos/Backup /mnt/HD-guilherme/Backup/Linux/Documentos
echo ''
echo 'Copiando Downloads...'
echo ''
mkdir /mnt/HD-guilherme/Backup/Linux/Downloads/Backup
sudo rsync -acv -progress /home/guilherme/Downloads/Backup /mnt/HD-guilherme/Backup/Linux/Downloads/Backup
echo ''
#echo 'Copiando Imagens...'
#echo ''
#sudo rsync -acv -progress /home/guilherme/Imagens/ /mnt/HD-guilherme/Backup/Linux/Imagens/
#echo ''
echo 'Copiando Vídeos...'
echo ''
sudo rsync -acv -progress /home/guilherme/Vídeos/ /mnt/HD-guilherme/Backup/Linux/Videos/
echo ''
#echo 'Criando pasta de códigos...'
#echo ''
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/NetBeansProjects/
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/notebook/
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/scripts/
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/PycharmProjects/
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/Python/
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/WEB/
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Codigos/PhpstormProjects/
#echo ''
echo 'Copiando projetos do NetBeans, Python, scripts, arquivos web...'
echo ''
sudo rsync -acv -progress /home/guilherme/NetBeans?Projects/ /mnt/HD-guilherme/Backup/Linux/Codigos/NetBeansProjects/
sudo rsync -acv -progress /home/guilherme/notebook/ /mnt/HD-guilherme/Backup/Linux/Codigos/notebook/
sudo rsync -acv -progress /home/guilherme/scripts/ /mnt/HD-guilherme/Backup/Linux/Codigos/scripts/
sudo rsync -acv -progress /home/guilherme/PycharmProjects/ /mnt/Ohers/Computador?de?Guilherme/Codigos/PycharmProjects/
sudo rsync -acv -progress /home/guilherme/Python/ /mnt/HD-guilherme/Backup/Linux/Codigos/Python/
sudo rsync -acv -progress --exclude 'dashboard' --exclude 'img' --exclude 'Extras' /opt/lampp/htdocs/ /mnt/HD-guilherme/Backup/Linux/Codigos/WEB/
echo ''
#echo 'Criando pasta Desktop...'
#echo ''
#sudo mkdir /mnt/HD-guilherme/Backup/Linux/Desktop/
#echo ''
echo 'Copiando Área de trabalho...'
echo '' 
sudo rsync -acv -progress /home/guilherme/Área?de?Trabalho/ /mnt/HD-guilherme/Backup/Linux/Área?de?Trabalho/
echo ''
echo '|--------------------------------------|'
echo '|Encerrando Cópia dos Arquivos do Linux|'
echo '|--------------------------------------|'
echo ''
echo '//////////////////////////////////////'
echo ''
echo '|----------------------------|'
echo '|Copiando Arquivos do Windows|'
echo '|----------------------------|'
echo ''
echo 'Montando Windows em /mnt...'
sudo mount /dev/sda2 /mnt/windows
echo ''
echo 'Copiando Documentos...'
echo ''
sudo rsync -acv -progress /mnt/windows/Users/Guilherme?Rocha/Documents/ /mnt/HD-guilherme/Backup/Computador/Documents/
echo ''
#echo 'Copiando Músicas...'
#echo ''
#sudo rsync -acv -progress /mnt/windows/Users/Guilherme?Rocha/Music/ /mnt/HD-guilherme/Backup/Windows/Music/
echo 'Copiando Imagens...'
echo ''
sudo rsync -acv -progress /mnt/windows/Users/Guilherme?Rocha/Pictures/ /mnt/HD-guilherme/Backup/Computador/Imagens/
echo ''
#echo 'Copiando projetos do NetBeans, Python, scripts, arquivos web...'
#echo ''
#sudo rsync -acv -progress /mnt/windows/Users/Guilherme?Rocha/PhpstormProjects/ /mnt/HD-guilherme/Backup/Windows/Codigos/PhpstormProjects/
#sudo rsync -acv -progress /mnt/windows/Users/Guilherme?Rocha/PycharmProjects/ /mnt/HD-guilherme/Backup/Windows/Codigos/PycharmProjects/
#sudo rsync -acv -progress /mnt/windows/Users/Guilherme?Rocha/PhpstormProjects/ /mnt/HD-guilherme/Backup/Windows/Codigos/PhpstormProjects/
#echo ''
echo '|----------------------------------------|'
echo '|Encerrando Cópia dos Arquivos do Windows|'
echo '|----------------------------------------|'
echo ''
echo '//////////////////////////////////////////'
echo ''
echo 'ENCERRANDO BACKUP'
echo ''
echo ''

res2=$(date +%s.%N)
dt=$(echo "$res2 - $res1" | bc)
dd=$(echo "$dt/86400" | bc)
dt2=$(echo "$dt-86400*$dd" | bc)
dh=$(echo "$dt2/3600" | bc)
dt3=$(echo "$dt2-3600*$dh" | bc)
dm=$(echo "$dt3/60" | bc)
ds=$(echo "$dt3-60*$dm" | bc)

printf "Tempo total de execução: %d:%02d:%02d:%02.4f\n" $dd $dh $dm $ds