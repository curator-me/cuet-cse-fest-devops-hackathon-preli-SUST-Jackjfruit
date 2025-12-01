# Clone the repo
git clone https://github.com/curator-me/cuet-cse-fest-devops-hackathon-preli-SUST-Jackjfruit
cd cuet-cse-fest-devops-hackathon-preli-SUST-Jackjfruit

# Start Development
dev:
	docker compose --env-file .env -f docker/compose.development.yaml up

# Start Production (Detached)
prod:
	docker compose --env-file .env -f docker/compose.production.yaml up

# Stop containers
down:
	docker compose -f docker/compose.development.yaml down
	docker compose -f docker/compose.production.yaml down

# View Logs
logs:
	docker compose -f docker/compose.development.yaml logs -f
