IMAGE_NAME?=quimrstorres/gore
TAG_NAME?=latest

build:
	@docker build -t $(IMAGE_NAME):$(TAG_NAME) .
.PHONY: build

repl: build
	@docker run -it $(IMAGE_NAME):$(TAG_NAME)
.PHONY: repl

login:
	@docker login
.PHONY: login

push: login
	@docker push $(IMAGE_NAME)
.PHONY: push
