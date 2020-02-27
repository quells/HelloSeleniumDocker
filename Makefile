IMG = hello-selenium

.PHONY: build
build:
	docker build -t $(IMG) .

.PHONY: run
run:
	docker run --rm -it \
		--shm-size=2g \
		$(IMG) \
		mvn test
