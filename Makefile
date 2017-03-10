IMAGE_NAME?=gore-docker

build:
	@docker build -t $(IMAGE_NAME) .
.PHONY: build

repl: build
	@docker run -it $(IMAGE_NAME)
.PHONY: repl
