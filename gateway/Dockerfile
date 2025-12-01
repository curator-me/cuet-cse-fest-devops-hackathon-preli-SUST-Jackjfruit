# ----------------------
# 1️⃣ Build Stage
# ----------------------
FROM node:18-alpine AS builder

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install ONLY production dependencies
RUN npm ci --only=production

# Copy source code
COPY . .

# ----------------------
# 2️⃣ Runtime Stage
# ----------------------
FROM node:18-alpine AS runner

WORKDIR /app

# Copy node_modules & code from build stage
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app ./

# Expose gateway port
EXPOSE 5921

# Run server (no hot reload)
CMD ["npm", "start"]
