# Base Image NodeJS
FROM node:lts-hydrogen

# Ordner für das Projekt erstellen und Berechtigung setzen
RUN mkdir /home/node/app && chown -R node:node /home/node/app

# Ab hier arbeiten (wie cd)
WORKDIR /home/node/app

# Source code vom host kopieren in die workdir (/home/node/app)
COPY --chown=node:node ./src ./

# Benutzer für NodeJS auswählen (Vorerstellt vom node container)
USER node

# Npm Projekt erstellen und libraries installieren
RUN npm init -y && npm install express

VOLUME /home/node/app
EXPOSE 3000

# index.js mit node ausführen
CMD [ "node", "index.js" ]
