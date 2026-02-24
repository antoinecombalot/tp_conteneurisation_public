FROM node:18-alpine

WORKDIR /app

#Copier tout le projet
COPY . .

#Installer les dépendances
RUN npm install

#Exposer le port
EXPOSE 5173

#Lancer en mode dev
CMD ["npm", "run", "dev", "--", "--host"]
