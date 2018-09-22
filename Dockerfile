# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Install dependencies
COPY ./package.json ./
RUN npm install
COPY ./ ./
# RUN yarn add

# Default command
CMD ["npm", "start"]
# CMD ["yarn", "start"]