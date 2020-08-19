.PHONY: build

SOURCE := "./source"
DIST := "./docs"

build:
	@echo "building source = ${SOURCE} dist = ${DIST}"
	generate-md --input ${SOURCE} --output ${DIST}