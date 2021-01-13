.PHONY: help
help:
	@cat ./Makefile

.PHONY: up
up:
	docker-compose -p jooq-example up -d --build

.PHONY: exec
exec:
	docker exec -it jooq-example-mysql bash

.PHONY: clean
clean:
	docker-compose down --rmi all --volumes --remove-orphans
