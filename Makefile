up-dev:
	docker compose --profile dev up -d

up-test:
	docker compose --profile test up -d

# Run each static job once and EXIT (the old `up` stayed attached to db/redis and hung CI).
# Pre-create the bind-mounted export dirs world-writable so the container user can
# write them whatever the host checkout uid is (CI runner uid != image appuser/node).
generate-static:
	mkdir -p shop_back/shop_back_static/out shop_front/shop_front/out
	chmod -R 777 shop_back/shop_back_static shop_front/shop_front
	docker compose --profile static build
	docker compose --profile static run --rm shop_back_static
	docker compose --profile static run --rm shop_front_static

up-prod:
	docker compose --profile prod up --build

# AI assistant behavioral evals (real model — costs tokens, needs OPENAI_API_KEY).
evals:
	docker compose run --rm --entrypoint python shop_back manage.py run_evals 