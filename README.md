docker-build-node
=================

Use a docker container to build the latest nodejs on debian wheezy


## Usage

* Build the `node-builder` container

  ````docker build -t node-builder github.com/deedubs/docker-build-node.git````
  
* Use builder to build latest node

  ````docker run -v ~/:/host:rw node-builder````
  
  NOTE: Passing ~/ will write the deb to your home directory
