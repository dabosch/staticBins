#executables := $(ls ./script/*.sh)
SOURCES := $(basename $(notdir $(shell find ./script -name '*.sh')))

.PHONY: alll
all:$(SOURCES)

.PHONY:container
container:buildcontainer.sif

buildcontainer.sif:buildcontainer.txt
	apptainer build --fakeroot buildcontainer.sif buildcontainer.txt

bin/% : script/%.sh
	mkdir -p ./bin
	./buildcontainer.sif $<
test:
	echo "${SOURCES}"

$(SOURCES): %: container bin/%