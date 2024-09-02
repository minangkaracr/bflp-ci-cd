# Mau diinstall node versi berapa
FROM node:latest
# directory sudah pasti, berdasarkan imagenya
WORKDIR /usr/src/app
# mau copy package.json ke directory
COPY package.json ./
# running di cmd dockernya, install depedencies
RUN npm install
# copy semua file
COPY . .

EXPOSE 4000
# Running node index.js
CMD [ "node", "index.js" ]
