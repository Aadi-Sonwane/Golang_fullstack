# Stage 1: Build the Go application
FROM golang:1.21 AS builder

# Set the working directory inside the container
WORKDIR /app

# Copy go.mod and go.sum to download dependencies first (caching layer)
COPY go.mod go.sum ./
RUN go mod download

# Copy the entire application code
COPY . .

# Build the application
RUN go build -o main .

# Stage 2: Create a lightweight image for the final application
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=builder /app/main .

# Expose the application port
EXPOSE 8080

# Set environment variables (Optional: They will be provided in docker-compose)
ENV XATA_API_KEY=$.env.XATA_API_KEY
ENV XATA_DATABASE_URL=$.env.XATA_DATABASE_URL

# Run the application
CMD ["./main"]


