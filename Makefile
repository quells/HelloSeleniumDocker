IMG = hello-selenium

.PHONY: build
build:
	docker build -t $(IMG) .

.PHONY: run
run:
	docker run --rm -it \
		--shm-size=2g \
		-p 4444:4444 \
		$(IMG) \
		mvn test