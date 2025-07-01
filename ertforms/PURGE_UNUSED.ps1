Write-Host "Nettoyage du projet Flutter pour Android uniquement..."

# Supprimer les dossiers inutiles
Remove-Item -Recurse -Force .dart_tool, test

# Nettoyage et récupération des packages
flutter clean
flutter pub get

Write-Host "Nettoyage terminé. Projet prêt pour Android uniquement ✅"