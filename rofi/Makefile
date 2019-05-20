.PHONY: build

build:
	docker build -t build-rofi .
	 docker run --rm -v "$$PWD/out:/out" -t build-rofi
