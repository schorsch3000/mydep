.PHONY: build

build:
	docker build -t build-i3 .
	 docker run --rm -v "$$PWD/out:/out" -t build-i3
