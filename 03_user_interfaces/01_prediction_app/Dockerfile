FROM node:alpine

RUN apk update && apk upgrade && apk add curl

# Set the working directory
WORKDIR /usr/src/app

# Copy the application files
COPY vite_app ./

# Run installation
RUN yarn install

# Expose Port
EXPOSE 5173

# Set the entry point to bash
ENTRYPOINT ["yarn", "dev", "--host"]