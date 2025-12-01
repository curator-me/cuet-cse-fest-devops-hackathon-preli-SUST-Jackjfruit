# Production Dockerfile for Backend
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files
COPY package* ./

# Install dependencies
# RUN npm ci --only=production && \
#     npm ci --only=development
RUN npm install

# Copy source code
COPY . .

# Build TypeScript
CMD ["npm", "start"]