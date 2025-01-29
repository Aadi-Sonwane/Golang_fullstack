# Go Fullstack Application with HTMX, Templ, and Xata

This is a fullstack web application built with **Go**, using **HTMX** for dynamic content updates and **Templ** for templating. It also integrates with **Xata** for the database layer. The application provides a lightweight, efficient, and scalable way to build modern web applications using Go and minimal dependencies.

## Features

- **Go Backend**: Built with Go for fast performance and simplicity.
- **HTMX**: For dynamic content updates without needing full-page reloads.
- **Templ**: A minimalist templating engine for Go to generate HTML views.
- **Xata Database**: A powerful, serverless database to store application data.

## Prerequisites

Before running the project, make sure you have the following installed on your machine:

- **Go (v1.21 or later)**: [Install Go](https://golang.org/dl/)
- **Docker & Docker Compose**: [Install Docker](https://www.docker.com/get-started)
- **Xata Account**: [Create an account on Xata](https://xata.io) to obtain your API key and database URL.

## Setup

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/your-username/go-fullstack-app.git
cd go-fullstack-app
```
## 2. Set Up Xata
 1. Sign up at [Xata](https://xata.io) and create a new database.
 2. Get your API Key and Database URL from Xata

## 3. Create .env File
- In the root of the project, create a .env file with your Xata credentials:
  ```bash
  XATA_API_KEY=your-xata-api-key
  XATA_DATABASE_URL=your-xata-database-url

  ```
## 4. Build and Run with Docker
- With Docker and Docker Compose installed, build and run the application:
```docker
docker-compose up --build -d
```


