FROM node:12
WORKDIR /src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app contents
COPY . .

# App runs on port 3000
EXPOSE 3000

# Start the app
CMD [ "npm", "start"]
