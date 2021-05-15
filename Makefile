postgres:
		docker run --name my-postgres -e POSTGRES_USER=root -e POSTGRES_PASSWORD=@piyuspandey021 -p 5432:5432 -d postgres:13-alpine

createdb:
		docker exec -it my-postgres createdb --username=root --owner=root simple_bank

dropdb:
		docker exec -it my-postgres dropdb simple_bank

.PHONY: postgres createdb dropdb