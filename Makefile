up-dev:
	docker compose --profile dev up -d

up-test:
	docker compose --profile test up -d

generate-static:
	docker compose --profile static up --build

up-prod:
	docker compose --profile prod up --build 