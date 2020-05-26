.PHONY: all start stop destroy doco rebuild reload

# 🐳 Docker Compose
start: CMD=up -d
stop: CMD=stop
destroy: CMD=down

# Usage: `make doco CMD="ps --services"`
# Usage: `make doco CMD="build --parallel --pull --force-rm --no-cache"`
doco start stop destroy:
	@docker-compose $(CMD)

rebuild:
	docker-compose build --pull --force-rm --no-cache
	make start

# Nginx: Reloads the server
reload:
	@docker-compose exec php kill -USR2 1
	@docker-compose exec nginx nginx -s reload