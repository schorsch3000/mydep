.PHONY: build

build:
	docker build -t build-nq .
	docker run --rm -v "$$PWD/out:/out" -t build-nq
