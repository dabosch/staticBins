#executables := $(ls ./script/*.sh)
SOURCES := $(basename $(notdir $(shell find ./script -name '*.sh')))

TODAY=$(shell date +'%Y-%m-%d')

.PHONY: alll
all:$(SOURCES)

.PHONY:container
container:buildcontainer.sif

.phony:tar
tar:all
	tar -cf "staticBins_dabosch_${TODAY}.tar" bin/

buildcontainer.sif:buildcontainer.txt
	apptainer build --fakeroot buildcontainer.sif buildcontainer.txt

bin/% : script/%.sh
	mkdir -p ./bin
	./buildcontainer.sif $<

$(SOURCES): %: bin/% | container
