# docker-sails-app

## Overview

This is an example Sails app created to test dockerizing a node/express server.

## Steps to create Docker Image

* Used [Dockerize your nodejs](https://nodesource.com/blog/dockerizing-your-nodejs-applications/) article as a reference. 
* Created sails example app using the following command: `sails new sails-app`
* Created `Dockerfile` based on the above reference.
* Build docker image: `docker build -t "docker-sails-app" .`
* Ran docker image: `docker run -it "docker-sails-app"`
* All source files are commited to this git repository at https://github.com/kevbaker/docker-sails-app


## Issues

* I can see the docker image started the sails application correctly since it renders the default ascii startup screen to my console.
* I can not access the docker image from the port 3000 on either localhost or on private ip.


## Questions

1. Is there a standard IP I can view this on?
2. How do I consistently find this IP?
3. How do I ssh into the image once it is running?

## Reference

* [Sails](http://sailsjs.org) application. Express based node
* [Dockerize your nodejs](https://nodesource.com/blog/dockerizing-your-nodejs-applications/) 
