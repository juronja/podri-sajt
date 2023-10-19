Just a smol test project for my podri from todri.

# Docker setup

1. **Build an image:**<br>
```docker build https://github.com/juronja/podri.git#main -t juronja/podri-sajt```
2. **Run container from image**<br>
```docker run -d -p 8989:80 --restart unless-stopped --name podri-sajt juronja/podri-sajt:latest```

# Update script in root
docker-update-script.sh
