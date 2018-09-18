.PHONY: build

build:
	docker build -t build-vim .
	docker run --rm -v "$$PWD/out:/out" -it build-vim
