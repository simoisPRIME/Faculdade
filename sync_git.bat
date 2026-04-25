@echo off
cls
echo Sincronizando com GitHub...
git add .
git commit -m "update"
git push origin main
echo.
echo ✓ Repositorio atualizado!
pause