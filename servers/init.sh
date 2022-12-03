./hostname.sh $1
./install.sh
./network.sh $1
./kernel-parameters.sh
cp ./index.html /var/www/html/index.html