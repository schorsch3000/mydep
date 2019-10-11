.PHONY: build

build:
	docker build -t build-enigma .
	 docker run --rm -v "$$PWD/out:/out" -t build-enigma
