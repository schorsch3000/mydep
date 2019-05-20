.PHONY: build

build:
	docker build -t build-smenu .
	docker run --rm -v "$$PWD/out:/out" -t build-smenu
