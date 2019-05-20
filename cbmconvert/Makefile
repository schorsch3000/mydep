.PHONY: build

build:
	docker build -t build-cbmconvert .
	docker run --rm -v "$$PWD/out:/out" -t build-cbmconvert
