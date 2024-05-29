# Use the official Node.js image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 4000

# Set environment variables (default values, should be overridden in production)
ENV DB_HOST=db
ENV DB_USER=exampleuser
ENV DB_PASSWORD=examplepass
ENV DB_NAME=exampledb

# Start the application
CMD ["npm", "start"]

