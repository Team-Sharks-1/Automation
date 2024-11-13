# Use official Node.js LTS as base image
FROM node:18-alpine AS build

# Set working directory
WORKDIR /app

# Copy and install dependencies for frontend
COPY frontend/package*.json ./Frontend/
RUN cd Frontend && npm ci

# Copy frontend code and build it
COPY frontend ./Frontend
RUN cd Frontend && npm run build

# Copy and install dependencies for backend
COPY backend/package*.json ./Backend/
RUN cd Backend && npm ci --only=production

# Copy backend code
COPY backend ./Backend

# Move the built frontend to the backend's public or static directory
RUN cp -r Frontend/build Backend/public

# Expose backend port
EXPOSE 3000

# Start backend server
WORKDIR /app/Backend
CMD ["node", "server.js"]
