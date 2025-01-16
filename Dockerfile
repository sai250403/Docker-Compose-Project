# Use Node.js as the base image
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the public and src folders to their respective locations
COPY ./public ./public
COPY ./src ./src

# Expose the default React development server port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
