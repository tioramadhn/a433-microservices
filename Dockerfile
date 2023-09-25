#mengambil base image dari docker hub
FROM node:14
# membuat direktori app dan menjadi lokasi pekerjaan pada kontainer
WORKDIR /app
# Menyalin semua source code di lokal kedalam container
COPY . . 
# membuat environment variable pada kontainer 
ENV NODE_ENV=production 
# membuat environment variable pada kontainer
ENV DB_HOST=item-db
# menginstall dependency yang dibutuhkan dan membuil aplikasi
RUN npm install --production --unsafe-perm && npm run build
# membuka port 8080 pada container
EXPOSE 8080
# menjalankan aplikasi pada command shell
CMD ["npm", "start"]

