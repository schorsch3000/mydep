.PHONY: build

build:
	docker build -t build-git .
	 docker run --rm -v "$$PWD/out:/out" -it build-git
