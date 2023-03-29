# Image builden
docker build -t meinnodeimage .

# Container laufen lassen
docker run -d --name meinnodecontainer -p 3000:3000 meinnodeimage
