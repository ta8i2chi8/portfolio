.PHONY: build-image shell install build serve

build-image:
	docker build -t web-ui .

shell:
	docker run -v ${PWD}:/src:cached --rm -it web-ui bash

install:
	docker run -v ${PWD}:/src:cached --rm -it web-ui yarn install

build:
	docker run -v ${PWD}:/src:cached --rm -it web-ui yarn build

serve:
	docker run -v ${PWD}:/src:cached -p8080:8080 --rm -it web-ui yarn serve

run-%:
	docker run -v ${PWD}:/src:cached --rm -it web-ui yarn run $*
