#!/bin/bash

# Verifica che siano forniti i tre argomenti
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <projectName> <githubUsername> <githubLink>"
    exit 1
fi

# Nome del progetto, nome utente GitHub e link del repository GitHub
projectName="$1"
githubUsername="$2"
githubLink="$3"

# Esegui i comandi per inizializzare il progetto e installare le dipendenze
npm create vite@latest
cd "$projectName"
npm install
npm install --save-dev gh-pages

# Modifica il file package.json
sed -i '2i\  "homepage": "https://'"$githubUsername"'.github.io/'"$projectName/"'",' package.json
sed -i "/export default defineConfig({/a\  base: \"\/$projectName\/\"," vite.config.js
sed -i '/"scripts": {/a\    "predeploy": "npm run build",\n    "deploy": "gh-pages -d dist",' package.json

# Esegui i comandi Git
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin "$githubLink"
git push -u origin main

# Esegui il deploy con npm
npm run deploy

# Crea lo script pushMe.sh
echo -e "#!/bin/bash\n\n# Aggiungi e committa i cambiamenti\n\
git add .\n\
git commit -m \"\$1\"\n\
git push -u origin main\n\
npm run deploy" > pushMe.sh

# Dai i permessi di esecuzione a pushMe.sh
chmod +x pushMe.sh

echo "Script completato con successo!"

