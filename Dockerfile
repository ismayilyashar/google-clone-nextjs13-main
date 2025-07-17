FROM node:18

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy all source files
COPY . .

# Build the Next.js app for production
RUN npm run build

# Expose port 3000 to host
EXPOSE 3000

# Start the production server
CMD ["npm", "start"]
