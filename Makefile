run-container-core:
	docker rm core-container --force
	docker build -t core .
	docker run -d -it -p 8080:8080 --name=core-container core

run-worker:
	go run cmd/worker/main.go