@echo off
chcp 65001 >nul
title Mise à jour complète - Programmes et Windows
color 0A

echo ===================================================
echo ===            MISE À JOUR DES PROGRAMMES       ===
echo ===================================================
echo.
echo Recherche et installation des mises à jour d'applications...
winget upgrade --all --accept-source-agreements --accept-package-agreements
echo.
echo Applications mises à jour !
timeout /t 2

echo ===================================================
echo ===            MISE À JOUR DE WINDOWS           ===
echo ===================================================
echo.
echo Détection des mises à jour Windows...
wuauclt /detectnow
wuauclt /updatenow
echo.
echo Windows Update lancé ! (vérifie dans Windows Update)
timeout /t 2

echo ===================================================
echo ===            PROCESSUS TERMINÉ                ===
echo ===================================================
echo.
pause
exit
