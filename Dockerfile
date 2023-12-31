#mengambil base image dengan nama node dan tag 20-alpine (node versi 20)
FROM node:20-alpine

#mengatur working directory untuk container pada folder /app
WORKDIR /app

#copy semua source code dari folder ini ke folder working directory container
COPY . .

#menjalankan perintah untuk install dependencies
RUN npm install

#ekspos port yang digunakan aplikasi adalah 3001
EXPOSE 3001

#jalankan perintah npm start saat container diluncurkan
CMD ["npm", "start"]