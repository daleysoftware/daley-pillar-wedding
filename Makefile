.PHONY: all clean build serve

all: build

clean:
	rm -rf _site build

build:
	jekyll build --config _config.yml

serve:
	jekyll serve -w --config _config.yml --port 8888
