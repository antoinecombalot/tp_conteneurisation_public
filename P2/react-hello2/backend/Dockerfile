# Utiliser Node.js 20 (requis par Vite)
FROM node:20-alpine

WORKDIR /app

# Copier les dépendances
COPY package*.json ./
RUN npm install

# Copier le code source
COPY . .

# Exposer le port
EXPOSE 3000

# ÉVITER le build problématique, lancer en dev
CMD ["npm", "run", "dev"]
