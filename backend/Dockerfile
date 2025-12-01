# Stage 1: Build
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .

# Stage 2: Runtime (Distroless or Alpine)
FROM node:18-alpine
WORKDIR /app

# Security: Don't run as root
USER node 

# Copy from builder
COPY --from=builder /app ./

# Env variables will be passed via Compose
EXPOSE 3847 
# (Note: Use 5921 for Gateway)

CMD ["npm", "start"]
