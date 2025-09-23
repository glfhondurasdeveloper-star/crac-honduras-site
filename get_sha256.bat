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
echo    - REEMPLAZAR_CON_TU_SHA256_DEBUG
echo    - REEMPLAZAR_CON_TU_SHA256_RELEASE
echo 3. Sube los archivos a GitHub Pages
echo.
pause
