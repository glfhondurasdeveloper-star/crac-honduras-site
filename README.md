# CRAC Honduras - Sitio Web

Este es el sitio web básico para la app CRAC Honduras que permite el funcionamiento correcto de Google Sign-In con Credential Manager.

## 📁 Estructura de Archivos

```
website/
├── index.html                    # Página principal
├── .well-known/
│   └── assetlinks.json          # Digital Asset Links para Android
└── README.md                    # Este archivo
```

## 🔧 Configuración Requerida

### 1. Obtener SHA-256 de Certificados

**Para Debug (desarrollo):**
```bash
keytool -list -v -keystore "%USERPROFILE%\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android
```

**Para Release (producción):**
```bash
keytool -list -v -keystore crac_honduras.keystore -alias key0
```

### 2. Actualizar assetlinks.json

Reemplaza los valores en `assetlinks.json`:
- `REEMPLAZAR_CON_TU_SHA256_DEBUG` → SHA-256 del certificado de debug
- `REEMPLAZAR_CON_TU_SHA256_RELEASE` → SHA-256 del certificado de release

### 3. Subir a GitHub Pages

1. Crear repositorio en GitHub: `crac-app-website`
2. Subir todos los archivos
3. Habilitar GitHub Pages en Settings > Pages
4. Tu sitio estará en: `https://tuusuario.github.io/crac-app-website`

### 4. Configurar Firebase

1. Ir a Firebase Console
2. Authentication > Sign-in method > Google
3. Agregar el dominio del sitio web en "Authorized domains"

## 🌐 URL Final

Una vez configurado, tu sitio estará disponible en:
`https://tuusuario.github.io/crac-app-website`

Y el archivo assetlinks en:
`https://tuusuario.github.io/crac-app-website/.well-known/assetlinks.json`

## ✅ Verificación

Para verificar que funciona:
1. Visita: `https://tuusuario.github.io/crac-app-website/.well-known/assetlinks.json`
2. Debe mostrar el JSON con los SHA-256 correctos
3. Prueba Google Sign-In en la app
