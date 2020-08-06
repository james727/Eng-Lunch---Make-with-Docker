IMAGE := heap-eng-lunch-app

lint:
	find scripts -type f | xargs docker run --rm -v "$(PWD):/mnt" koalaman/shellcheck:stable

build: lint
	docker build -t $(IMAGE) .

run: build
	docker run --rm -p 3000:3000 -it $(IMAGE)