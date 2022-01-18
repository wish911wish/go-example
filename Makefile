up:
	docker-compose up -d
down:
	docker-compose down --remove-orphans

init:
	docker-compose up -d --build

destroy:
	docker-compose down --rmi all --volumes --remove-orphans

app:
	docker-compose exec docker-gs-ping-roach bash

db:
	docker-compose exec db bash
