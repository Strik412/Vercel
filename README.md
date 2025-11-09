# Proyecto de Despliegue en Vercel

## 📋 Descripción del Proyecto

Este es un proyecto educativo de **Dylan** creado para aprender sobre **sistemas distribuidos** y **despliegue continuo (CD)** utilizando **GitHub Actions** y **Vercel**.

## 🎯 ¿De qué trata la aplicación?

Esta aplicación es un **sitio web estático simple** que demuestra:

1. **Desarrollo Web Básico**: HTML, CSS y JavaScript puro
2. **Integración Continua/Despliegue Continuo (CI/CD)**: Automatización con GitHub Actions
3. **Plataforma de Hosting**: Despliegue automático en Vercel

## 🏗️ Estructura del Proyecto

```
Vercel/
├── index.html          # Página principal del sitio
├── styles.css          # Estilos CSS para la página
├── script.js           # Funcionalidad JavaScript
├── Dockerfile          # Configuración de Docker
├── docker-compose.yml  # Orquestación de contenedores
├── .dockerignore       # Archivos excluidos de Docker
├── README.md           # Este archivo
└── .github/
    └── workflows/
        └── vercel.yml  # Configuración de despliegue automático
```

## 📄 Componentes

### 1. **index.html**
- Página web simple con título "Mi Proyecto de distribuida"
- Contiene un saludo: "Hola, Vercel 👋"
- Incluye un botón interactivo

### 2. **script.js**
- Función `mostrarMensaje()` que muestra una alerta
- Mensaje: "¡Has desplegado tu sitio en Vercel!"

### 3. **styles.css**
- Diseño centrado con fondo gris (#f0f0f0)
- Fuente Arial
- Estilo para botones con cursor pointer

### 4. **GitHub Actions Workflow (vercel.yml)**
El archivo de workflow automatiza el despliegue:
- **Trigger**: Se ejecuta automáticamente al hacer push a la rama `main`
- **Validación**: Verifica que exista el archivo `index.html`
- **Instalación**: Instala Vercel CLI
- **Despliegue**: Despliega el sitio a Vercel en producción

## 🚀 Flujo de Despliegue

### Despliegue en Vercel (Automático)

1. El desarrollador hace push de cambios a la rama `main`
2. GitHub Actions se activa automáticamente
3. Se valida la estructura del proyecto
4. Se instala Vercel CLI
5. Se despliega el sitio a Vercel usando el token de autenticación
6. El sitio queda disponible en producción

### Despliegue con Docker (Local)

#### Opción 1: Docker
```bash
# Construir la imagen
docker build -t vercel-app .

# Ejecutar el contenedor
docker run -d -p 8080:80 vercel-app

# La aplicación estará disponible en http://localhost:8080
```

#### Opción 2: Docker Compose (Recomendado)
```bash
# Iniciar el contenedor
docker compose up -d

# La aplicación estará disponible en http://localhost:8080

# Detener el contenedor
docker compose down
```

## 🎓 Propósito Educativo

Este proyecto fue creado con fines educativos para aprender sobre:
- ✅ Desarrollo web básico (HTML/CSS/JavaScript)
- ✅ Control de versiones con Git y GitHub
- ✅ Automatización con GitHub Actions
- ✅ Despliegue de aplicaciones web
- ✅ Plataformas de hosting modernas (Vercel)
- ✅ Conceptos de sistemas distribuidos
- ✅ Containerización con Docker

## 👤 Autor

**Dylan** - Proyecto de Distribuida

## 🐳 Requisitos para Docker

- Docker instalado (versión 20.10 o superior)
- Docker Compose (incluido en Docker Desktop)

## 📝 Notas

- **Vercel**: El proyecto utiliza un token de Vercel almacenado en los secretos de GitHub (`VERCEL_TOKEN`)
- **GitHub Actions**: El despliegue es completamente automático sin intervención manual
- **Docker**: Utiliza nginx:alpine para servir los archivos estáticos de forma ligera y eficiente
- Es un ejemplo práctico de DevOps y CI/CD
