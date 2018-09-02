.PHONY: build

build:
	docker build -t build-tmux .
	docker run --rm -v "$$PWD/out:/out" -it build-tmux
