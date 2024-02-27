# Membuat docker image dengan nama image item-app, dan memiliki tag v1.
echo "Building item-app:v1"
docker build -t item-app:v1 .

# Melihat daftar image di lokal
echo "List docker images"
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub username dockerhub: yusufstawan
echo "Tagging item-app:v1 with yusufstawan/item-app:v1"
docker tag item-app:v1 yusufstawan/item-app:v1
docker images

# Login ke Docker Hub 
echo "Login Docker Hub"
docker login

# Mengunggah image ke Docker Hub
echo "Pushing yusufstawan/item-app:v1"
docker push yusufstawan/item-app:v1

echo "Done"
