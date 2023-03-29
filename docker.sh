#!/bin/bash

# Startet den MariaDB-Container mit einer bestimmten Version und einem benannten Volumen
docker run -d --name my-mariadb-container -p 3306:3306 -v my-mariadb-data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mysecretpassword mariadb:10.6.5

# Wartet, bis der Container gestartet ist
echo "Warte, bis der Container gestartet ist..."
sleep 10

# Erstellt eine Datenbank im Container und zeigt alle Datenbanken an
docker exec -it my-mariadb-container mysql -u root -pmysecretpassword -e "CREATE DATABASE mydatabase; SHOW DATABASES;"

# Stoppt und löscht den MariaDB-Container
docker stop my-mariadb-container
docker rm my-mariadb-container

# Löscht das MariaDB-Image mit der bestimmten Version
docker rmi mariadb:10.6.5

# Löscht das benannte Volumen
docker volume rm my-mariadb-data

echo "Alle Befehle wurden ausgeführt."
