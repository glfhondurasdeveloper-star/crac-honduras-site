@echo off
echo Obteniendo SHA-256 de certificados...
echo.

echo === CERTIFICADO DEBUG ===
keytool -list -v -keystore "%USERPROFILE%\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android 2>nul | findstr "SHA256"
if errorlevel 1 (
    echo No se encontró el certificado de debug
    echo Ubicación esperada: %USERPROFILE%\.android\debug.keystore
)

echo.
echo === CERTIFICADO RELEASE ===
keytool -list -v -keystore "crac_honduras.keystore" -alias key0 2>nul | findstr "SHA256"
if errorlevel 1 (
    echo No se encontró el certificado de release
    echo Ubicación esperada: crac_honduras.keystore
)

echo.
echo === INSTRUCCIONES ===
echo 1. Copia los SHA256 que aparecen arriba
echo 2. Reemplaza en assetlinks.json:
echo    - 88:98:63:BD:3B:6C:6B:4C:65:60:3B:6B:1C:AE:C5:CF:9F:A0:74:BF:6F:F0:D9:84:19:3B:96:2C:4D:47:C4:7D
echo    - 36:76:EF:0F:25:B5:16:60:A7:9D:00:17:61:E9:F9:B6:DB:75:B0:63:CB:43:6D:E3:8B:08:69:00:75:44:12:DC
echo 3. Sube los archivos a GitHub Pages
echo.
pause
