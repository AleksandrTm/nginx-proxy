build:
	@docker compose build
up:
	@docker compose up -d
down:
	@docker compose down
logs-nginx:
	@docker compose logs nginx-proxy
install-prod:
	@cp .env.example .env
	@sed -i 's/NGINX_CONF_PATH=.*/NGINX_CONF_PATH=prod/' .env
install-local:
	@cp .env.example .env
	@sed -i 's/NGINX_CONF_PATH=.*/NGINX_CONF_PATH=local/' .env