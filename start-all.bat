@echo off
echo ========================================
echo Stok Takip Fullstack Uygulamasi Baslatiliyor...
echo ========================================
echo.
echo Backend ve Frontend ayri pencerelerde acilacak...
echo.

start "Stok Takip Backend" cmd /k "cd /d %~dp0stok-takip-backend && mvnw.cmd spring-boot:run"
timeout /t 5 /nobreak >nul
start "Stok Takip Frontend" cmd /k "cd /d %~dp0stok-takip-frontend\stok-takip-app && npm start"

echo.
echo Backend: http://localhost:8080
echo Frontend: http://localhost:4200
echo.
echo Her iki pencereyi de kapatmak icin pencereyi kapatabilirsiniz.
pause

