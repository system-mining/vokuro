# Add `Make dev_up` as a alias for `docker-compose up -d --force-recreate`
dev_up:
 docker-compose up -d --force-recreate
 
# Add `Make dev_down` as util command to run docker-comspoe down
dev_down:
 docker-compose down

# Add `make bootstrap` to run make compose-install & make dev_up for the first time run project
bootstrap: 
 composer-install dev_up

composer-install:
	rm -rf src/vendor/* && docker run  -e LOCAL_USER_ID=$$(id -u $(USER)) --rm -v $$(pwd)/src:/app ngtrieuvi92/composer composer -vvv install --ignore-platform-reqs

composer-update:
 docker run  -e LOCAL_USER_ID=$$(id -u $(USER)) --rm -v $$(pwd)/src:/app ngtrieuvi92/composer composer -vvv update --ignore-platform-reqs