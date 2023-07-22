# Use a base Node.js image with a compatible version of `glibc`
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the desired port (e.g., 3000)
EXPOSE 3000

# Start the Next.js application
CMD ["npm", "start"]
