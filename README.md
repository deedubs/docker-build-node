node-build
=================

Use a docker container to build the latest nodejs on debian wheezy


## Usage

* Build the `node-build` container

  ````docker build -t node-build github.com/deedubs/docker-node-build.git````
  
* Use builder to build latest node

  ````docker run -i -v /tmp/:/host:rw node-build````
  
  NOTE: /tmp refers to where node-build will write the deb file
