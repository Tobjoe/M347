docker build -t mini-projekt-website .
docker run -d --name my-mini-projekt-website -p 8080:80 -v /home/andri/Downloads/web/logs:/usr/local/apache2/logs/ mini-projekt-website
