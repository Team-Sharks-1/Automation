# Dockerfile

# Use official Node.js LTS as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy backend code
COPY Backend ./Backend

# Install dependencies for backend
WORKDIR /app/Backend
RUN npm install

# Expose backend port
EXPOSE 3000

# Start backend server
CMD ["node", "server.js"]