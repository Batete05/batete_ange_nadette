# Use official Node.js LTS image
FROM node:18-alpine
# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy application code
COPY app.js ./

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"] 