node-build
=================

Use a docker container to build the latest nodejs on debian wheezy


## Usage

* Build the `node-builder` container

  ````docker build -t node-builder github.com/deedubs/docker-build-node.git````
  
* Use builder to build latest node

  ````docker run -v /tmp/:/host:rw node-builder````
  
  NOTE: /tmp refers to where node-build will write the deb file
