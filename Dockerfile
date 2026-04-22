FROM node:20.20-alpine

# WORKDIR, RUN, CMD, ENTRYPOINT, ENV, EXPOSE, VOLUME, COPY, ADD
# WORKDIR /app


# Copier le code de l'app dans le conteneur
COPY ./simpleApp/* /app/

# Se rendre dans le répertoire de l'application
# Installer les dépendances
RUN cd /app && npm install

# Exposer le port 80 pour que l'application soit accessible
EXPOSE 3000

# Executer l'application en arrière plan
# CMD ["npm", "start"]
# CMD node /app/index.js
CMD ["node", "/app/index.js"]