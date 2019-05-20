.PHONY: build

build:
	mkdir -p in
	cp ../rofi/out/* in
	docker build -t build-rofi .
	docker run --rm -v "$$PWD/out:/out" -t build-rofi
