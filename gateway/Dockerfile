# # Production Dockerfile for Gateway
# FROM node:20-alpine AS builder

# WORKDIR /app

# # Copy package files
# COPY package* ./

# # Install dependencies (production only)
# # RUN npm ci --only=production && \
# #     npm ci --only=development

# # Copy source code
# COPY . .

# # Runtime stage - minimal image
# FROM node:20-alpine

# # WORKDIR /app

# # Install curl for health checks
# # RUN apk add --no-cache curl
# RUN npm install

# # # Create non-root user for security
# # RUN addgroup -g 1001 -S nodejs && \
# #     adduser -S nodejs -u 1001

# # # Copy only production dependencies from builder
# # COPY --from=builder --chown=nodejs:nodejs /app/node_modules /app/node_modules
# # COPY --from=builder --chown=nodejs:nodejs /app/src /app/src
# # COPY --from=builder --chown=nodejs:nodejs /app/package*.json /app/

# # Switch to non-root user
# USER nodejs

# # Expose gateway port (external)
# EXPOSE 5921

# # Health check
# HEALTHCHECK --interval=30s --timeout=10s --start-period=10s --retries=3 \
#     CMD curl -f http://localhost:5921/health || exit 1

# # Start application
# CMD ["node", "src/gateway.js"]

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
RUN ["npm", "start"]