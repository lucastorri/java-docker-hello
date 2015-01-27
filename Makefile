SCRIPT_DIR=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))

all: build
	echo "To run: docker run hello-java"

clean:
	rm -rf ${SCRIPT_DIR}/out

build: clean
	mkdir ${SCRIPT_DIR}/out
	javac -d ${SCRIPT_DIR}/out ${SCRIPT_DIR}/src/Main.java
	cp ${SCRIPT_DIR}/Dockerfile ${SCRIPT_DIR}/out
	docker build -t hello-java ${SCRIPT_DIR}/out
