#executables := $(ls ./script/*.sh)
SOURCES := $(basename $(notdir $(shell find ./script -name '*.sh')))

TODAY=$(shell date +'%Y-%m-%d')

.PHONY: all
all:$(SOURCES)

.PHONY:container
container:buildcontainer.sif

.PHONY: clean
clean:
	rm -rf ./temp/
	rm -rf ./bin/
	rm ./buildcontainer.sif

.phony:tar
tar:all
	tar -cf "staticBins_dabosch_${TODAY}.tar" bin/

buildcontainer.sif: | buildcontainer.txt
	apptainer build --fakeroot buildcontainer.sif buildcontainer.txt

bin/% : script/%.sh
	mkdir -p ./bin
	mkdir -p temp
	apptainer exec --no-home -B "./temp/:${HOME}" -B "./script:${HOME}/script:ro" -B "./bin:${HOME}/bin" -B "./code:${HOME}/code:ro" ./buildcontainer.sif "$<"
	chmod -R 700 ./temp/
	rm -rf ./temp/
	# ./buildcontainer.sif $<

$(SOURCES): %: bin/%

interactive:
	mkdir -p ./bin
	mkdir -p temp
	apptainer shell --no-home -B "./temp/:${HOME}" -B "./script:${HOME}/script:ro" -B "./bin:${HOME}/bin" -B "./code:${HOME}/code:ro" ./buildcontainer.sif
	rm -rf ./temp/