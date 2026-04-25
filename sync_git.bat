@echo off
cls
echo ====================================
echo    SINCRONIZANDO COM GITHUB
echo ====================================
echo.
echo Baixando atualizacoes...
git pull origin main
echo.
echo Enviando alteracoes...
git add .
git commit -m "update"
git push origin main
echo.
echo ====================================
echo   ✓ Repositorio atualizado!
echo ====================================
echo.
pause