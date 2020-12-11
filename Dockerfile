# NodeJS service
FROM node

# Clone git repo

RUN git clone https://github.com/timurb/flatris.git

# Go to work folder
WORKDIR	/flatris

# cp insall package for one time installation 
RUN yarn install

# Test installed app
RUN yarn test

# Build app
RUN yarn build

# Start app after container run
CMD yarn start

# Open 3000 port
EXPOSE 3000
