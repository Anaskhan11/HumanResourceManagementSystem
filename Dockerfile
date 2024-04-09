FROM node:slim
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy all backend files
COPY . .
EXPOSE 5000
# Command to run the application
CMD ["node", "index.js"]
