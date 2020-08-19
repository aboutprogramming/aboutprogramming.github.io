.PHONY: build

SOURCE := "./source"
DIST := "./dist"

build:
	@echo "building source = ${SOURCE} dist = ${DIST}"
	generate-md --input ${SOURCE} --output ${DIST}