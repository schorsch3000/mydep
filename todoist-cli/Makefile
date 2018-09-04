.PHONY: build

build:
	mkdir -p out
	docker build -t build-todoist .
	docker run --rm -v "$$PWD/out:/out" -t build-todoist
	docker build -t pack-todoist package
	docker run --rm -v "$$PWD/out:/out" -t pack-todoist
