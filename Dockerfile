FROM node:14
#Menggunakan base image Node.js versi 14

WORKDIR /app
#Menentukan working directory untuk container /app

COPY . .
#Menyalin source code ke working directory

ENV NODE_ENV=production
#Menentukan aplikasi berjalan dalam production mode

ENV DB_HOST=item-db
#Menentukan agar container bernama item-db menjadi database host

RUN npm install --production --unsafe-perm && npm run build
#Install dependencies production dan build aplikasi

EXPOSE 8080
#Mengekspos port yang digunakan aplikasi yaitu 8080

CMD ["npm", "start"]
#Meluncurkan container agar server berjalan dengan npm start