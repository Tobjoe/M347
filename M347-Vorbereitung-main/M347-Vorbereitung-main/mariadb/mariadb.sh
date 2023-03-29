# Image holen

docker pull mariadb:10.6

# MariaDB Container starten mit vorgegebener Version, Volume
# WICHTIG: Imagename zuletzt
docker run -d --name vorbereitungmysql -e MARIADB_ROOT_PASSWORD=root -v vorbereitungmysqlvolume:/var/lib/mysql mariadb:10.6

# Verbindung zur Linux Shell vom Container
docker exec -it vorbereitungmysql /bin/bash

# Direkte Verbindung zu MariaDB Shell
docker exec -it vorbereitungmysql mariadb -u root -p

# Conainer stoppen (Container muss vor dem löschen immer gestoppt werden)
docker stop vorbereitungmysql

# Container löschen
docker rm vorbereitungmysql

# Image löschen
docker rmi mariadb:10.6
