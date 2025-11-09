# Vercel Deployment Project

## Project Description

This is an educational project  created to learn about **distributed systems** and **continuous deployment (CD)** using **GitHub Actions** and **Vercel**.

## What is the application about?

This application is a simple static website that demonstrates:

1. Basic Web Development: Pure HTML, CSS, and JavaScript
2. Continuous Integration/Continuous Deployment (CI/CD): Automation with GitHub Actions
3. Hosting Platform: Automatic deployment on Vercel

## Project Structure

```
Vercel/
├── index.html # Site homepage
├── styles.css # CSS styles for the page
├── script.js # JavaScript functionality
├── Dockerfile # Docker configuration
├── docker-compose.yml # Container orchestration
├── .dockerignore # Files excluded from Docker
├── README.md # This file
└── .github/
└── workflows/
└── vercel.yml # Automatic deployment configuration
```

## Components

### 1. **index.html**
- Simple webpage titled "My Distributed Project"
- Contains a greeting: "Hello, Vercel 👋"
- Includes an interactive button

### 2. **script.js**
- Function `showMessage()` that displays an alert
- Message: "You have deployed your site to Vercel!"

### 3. **styles.css**
- Centered design with gray background (#f0f0f0)
- Arial font
- Style for buttons with cursor pointer

### 4. **GitHub Actions Workflow (vercel.yml)**
The workflow file automates deployment:
- **Trigger**: Executes automatically when pushing to the `main` branch
- **Validation**: Verifies that the `index.html` file exists
- **Installation**: Installs Vercel CLI
- **Deployment**: Deploys the site to Vercel in production

## Deployment Flow

### Deployment to Vercel (Automatic)

1. The developer pushes changes to the `main` branch
2. GitHub Actions is automatically triggered
3. The project structure is validated
4. Vercel CLI is installed
5. The site is deployed to Vercel using the authentication token
6. The site It is now available in production.

### Deployment with Docker (Local)

#### Option 1: Docker
```bash
# Build the image
`docker build -t vercel-app .`

` # Run the container
`docker run -d -p 8080:80 vercel-app

# The application will be available at http://localhost:8080
```

#### Option 2: Docker Compose (Recommended)
```bash
# Start the container
`docker compose up -d

# The application will be available at http://localhost:8080

# Stop the container
`docker compose down
```

## Educational Purpose

This project was created for educational purposes to learn about:
- Basic web development (HTML/CSS/JavaScript)
- Version control with Git and GitHub
- Automation with GitHub Actions
- Web application deployment
- Modern hosting platforms (Vercel)
- Distributed systems concepts
- Containerization With Docker

## Docker Requirements

- Docker installed (version 20.10 or higher)
- Docker Compose (included in Docker Desktop)

## Notes

- **Vercel**: The project uses a Vercel token stored in GitHub secrets (`VERCEL_TOKEN`)
- **GitHub Actions**: Deployment is fully automatic without manual intervention
- **Docker**: Uses nginx:alpine to serve static files in a lightweight and efficient way
