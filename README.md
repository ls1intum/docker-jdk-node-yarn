# docker-jdk-node-yarn
Docker Container for Docker Hub

	docker build --platform linux/amd64 --no-cache -t openjdk-node-yarn .

	docker run -itd -p 80:80 --name openjdk-node-yarn openjdk-node-yarn /bin/bash

	docker exec -it openjdk-node-yarn /bin/bash

	java -version
	
	mvn -v

	node -v
	
	npm -v


### Verification
Try out if everything works correctly when testing a Spring Boot Application, e.g. Artemis

	git clone --depth 1 --single-branch https://github.com/ls1intum/Artemis.git artemis

	cd artemis
	
	./gradlew test --tests ProgrammingExerciseTemplateIntegrationTest



### Publish to DockerHub and GitHub Registry

	git tag </tagname>

    git push --tags
	
	
	
#### Example

	git tag java17node16
	
	git push --tags


#### Verify the version used in the DockerHub image

	docker stop openjdk-node-yarn
	
	docker rm openjdk-node-yarn
	
	docker rmi openjdk-node-yarn

	docker rmi ls1tum/openjdk-node-yarn:java21node22-2

	docker pull ls1tum/openjdk-node-yarn:java21node22-2
	
	docker run -itd -p 80:80 --name openjdk-node-yarn ls1tum/openjdk-node-yarn:java21node22-2 /bin/bash
	
	docker exec -it openjdk-node-yarn /bin/bash
	
	java -version
	
	mvn -v

	node -v
	
	npm -v