FROM golang:1.21

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers
COPY . .

# Télécharger les dépendances et compiler le programme
RUN go mod tidy && go build -o /cowsay-app

# Définir l'entrée par défaut
ENTRYPOINT ["/cowsay-app"]