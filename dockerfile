# 1️⃣ Use an official Node.js base image
FROM node:18

# 2️⃣ Set a working directory inside the container
WORKDIR /usr/src/app

# 3️⃣ Copy package files first (for better caching)
COPY package*.json ./

# 4️⃣ Install app dependencies
RUN npm install

# 5️⃣ Copy the rest of the app files
COPY . .

# 6️⃣ Expose the port your app runs on
EXPOSE 3000

# 7️⃣ Define the command to run your app
CMD ["npm", "start"]
