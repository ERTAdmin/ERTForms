Write-Host "Nettoyage du projet Flutter pour Android uniquement..."

# Supprimer les dossiers inutiles
Remove-Item -Recurse -Force .dart_tool, .idea, .vscode, build, ios, linux, macos, windows, web, test

# Supprimer les fichiers inutiles
Remove-Item -Force analysis_options.yaml, ertforms.iml

# Nettoyage et récupération des packages
flutter clean
flutter pub get

Write-Host "Nettoyage terminé. Projet prêt pour Android uniquement ✅"