#membuat docker image dari file dockerfile pada current direktori dengan nama  image item app dan tag v1
docker build -t item-app:v1 .

#menampilkan list dari image yang kita punya
docker images

#mengubah nama image dan tag  untuk disesuaikan dengan nama repository 
docker tag item-app:v1 ghcr.io/tioramadhn/item-app:v1

#Mendapatkan password dari variable lalu memasukkan sebagai inputan pada docker login
echo $GITHUB_TOKEN | docker login ghcr.io -u tioramadhn --password-stdin

#Mengunggah image ke github packages
docker push ghcr.io/tioramadhn/item-app:v1

