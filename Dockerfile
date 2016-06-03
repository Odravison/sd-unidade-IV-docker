FROM node

# Create app directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY sdproject.js /usr/src/app

EXPOSE 8080
CMD [ "node", "sdproject.js" ]
