# docker-jdk-node-yarn
Docker Container for Docker Hub

	docker build --no-cache -t docker-jdk-node-yarn .

	docker run -itd -p 80:80 --name docker-jdk-node-yarn docker-jdk-node-yarn /bin/bash

	docker exec -it docker-jdk-node-yarn /bin/bash

	java -version
	
	mvn -v

	node -v
	
	npm -v


### Verification
Try out if everything works correctly when testing a Spring Boot Application, e.g. Artemis

	git clone --depth 1 --single-branch https://github.com/ls1intum/Artemis.git artemis

	cd artemis
	
	./gradlew test --tests ProgrammingExerciseTemplateIntegrationTest
