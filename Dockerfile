#mengambil base image dengan nama node dan tag 14 (node versi 14)
FROM node:14

#mengatur working directory untuk container pada folder /app
WORKDIR /app

#copy semua source code dari folder ini ke folder working directory container
COPY . .

#set environment variable NODE_ENV dengan nilai production agar aplikasi berjalan mode produksi dan DB_HOST dengan nilai item-db menentukan database host dengan menggunakan item-db
ENV NODE_ENV=production DB_HOST=item-db

#menjalankan perintah untuk install dependencies production dan build aplikasi (npm install untuk install dependencies dan npm run build untuk build aplikasi)
RUN npm install --production --unsafe-perm && npm run build

#ekspos port yang digunakan aplikasi adalah 8080
EXPOSE 8080

#jalankan perintah npm start saat container diluncurkan
CMD ["npm", "start"]