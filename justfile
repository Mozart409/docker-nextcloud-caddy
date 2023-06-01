alias r:= run
alias u:= up
alias d:= down
alias res:= restart

default: 
	just --list

clear:
	clear

run: clear
	cargo watch -c -x run

fmt: clear
	cargo fmt

up: clear
	docker compose up -d --remove-orphans

down: clear
	docker compose down

restart: clear
	docker compose restart