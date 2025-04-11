# Create the docker image
# Node.js version 18
FROM node:18-slim

# Set working folder inside the container to /app
WORKDIR /app     

# copy everything from your current project folder into the container
COPY . .         

# Install all dependecncies
RUN npm install  

# Open port 3000, so you can see the app in your browser
EXPOSE 3000      

# Tells Docker to start the app when the container runs
CMD ["npm", "start"]  