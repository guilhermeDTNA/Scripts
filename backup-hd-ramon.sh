sudo su

echo ''
echo '|-------------------|'
echo '|Iniciando Backup...|'
echo '|-------------------|'
echo ''


echo '|---------------------|'
echo '|Criando diretórios...|'
echo '|---------------------|'
echo ''

mkdir /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/
mkdir /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Documents/
mkdir /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Downloads/
mkdir /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Imagens/
mkdir /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Music/
mkdir /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Videos/

echo ''
echo '|----------------------|'
echo '|Copiando Documentos...|'
echo '|----------------------|'
echo ''

rsync -acv -progress /media/guilherme/Others/Computador?de?Guilherme/Documents/ /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Documents/

echo ''
echo '|---------------------|'
echo '|Término de Documentos|'
echo '|---------------------|'
echo ''

echo ''
echo '|---------------------|'
echo '|Copiando Downloads...|'
echo '|---------------------|'
echo ''

rsync -acv -progress /media/guilherme/Others/Computador?de?Guilherme/Downloads/ /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Downloads/

echo ''
echo '|--------------------|'
echo '|Término de Downloads|'
echo '|--------------------|'
echo ''

echo ''
echo '|-------------------|'
echo '|Copiando Imagens...|'
echo '|-------------------|'
echo ''

rsync -acv -progress /media/guilherme/Others/Computador?de?Guilherme/Imagens/ /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Imagens/

echo ''
echo '|------------------|'
echo '|Término de Imagens|'
echo '|------------------|'
echo ''

echo ''
echo '|-------------------|'
echo '|Copiando Músicas...|'
echo '|-------------------|'
echo ''

rsync -acv -progress /media/guilherme/Others/Computador?de?Guilherme/Music/ /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Music/

echo ''
echo '|------------------|'
echo '|Término de Músicas|'
echo '|------------------|'
echo ''

echo ''
echo '|------------------|'
echo '|Copiando Vídeos...|'
echo '|------------------|'
echo ''

rsync -acv -progress /media/guilherme/Others/Computador?de?Guilherme/Videos/ /media/guilherme/GUILHERME\ 6/Backup/Computador-Guilherme/Videos/

echo ''
echo '|-----------------|'
echo '|Término de Vídeos|'
echo '|-----------------|'
echo ''

echo ''
echo '|------------------------------------|'
echo '|Excluindo arquivos do HD de Ramon...|'
echo '|------------------------------------|'
echo ''

rm -R /media/guilherme/Others/Computador?de?Guilherme/

echo ''
echo '|---------------------|'
echo '|Finalizando backup...|'
echo '|---------------------|'
echo ''


