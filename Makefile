IMAGE_NAME := deploytest
TAG_FILE   := deploytest_tag

.PHONY: all build clean

all: build

build:
	@if [ ! -f $(TAG_FILE) ]; then echo 0 > $(TAG_FILE); fi
	@NEW_TAG=$$(( $$(cat $(TAG_FILE)) + 1 )); \
	echo $$NEW_TAG > $(TAG_FILE); \
	docker build --build-arg TAG=$$NEW_TAG -t $(IMAGE_NAME):$$NEW_TAG -t $(IMAGE_NAME):prod . ; \
	echo "Built image $(IMAGE_NAME):$$NEW_TAG (also tagged $(IMAGE_NAME):prod)"

clean:
	rm -f $(TAG_FILE)
