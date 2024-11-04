# Utiliser une image de base légère avec Python
FROM python:3.12-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers de dépendances et installer les packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code source de l'application
COPY . .

# Exposer le port sur lequel l'application s'exécutera
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["python", "app.py"]
