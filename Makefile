help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  build   - Build Docker images"
	@echo "  up      - Start all containers (detached mode)"
	@echo "  down    - Stop and remove all containers"
	@echo "  restart - Restart all containers"
	@echo "  logs    - Follow logs of all containers"

build:
	@echo "Building Docker images..."
	docker-compose build

up:
	@echo "Starting Docker containers..."
	docker-compose up -d

up-logs:
	@echo "Starting Docker containers with logs..."
	docker-compose up

down:
	@echo "Stopping and removing Docker containers..."
	docker-compose down

restart: down up

logs:
	@echo "Tailing logs..."
	docker-compose logs -f