# docker-jdk-node-yarn
Docker Container for Docker Hub

	docker build --no-cache -t docker-jdk-node-yarn .

	docker run -itd -p 80:80 --name docker-jdk-node-yarn docker-jdk-node-yarn /bin/bash

	docker exec -it docker-jdk-node-yarn /bin/bash

	java -version

	node --version