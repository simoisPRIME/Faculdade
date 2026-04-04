@echo off
git add .
set /p msg="Digite a mensagem do commit: "
git commit -m "%msg%"
git push origin main
echo Atualizacao concluida!
pause