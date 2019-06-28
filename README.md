# securitylinter-python3-bandit

Docker Image for Bandit Security Linter

###### Description:
This repository contains the, Docker File for PyCQA Bandit Security Linter.

Link: https://github.com/PyCQA/bandit

###### Requirements:
To build the images, all you need is the Docker client appropriate to your operating system.

###### Building the Image:

`docker build -t securitylinter-python3-bandit .`

###### Running the Security Linter:

To run a linter on your project, you'll first need to build the linter image and then, from your project root:

``docker run -v `pwd`:/code tejaschandra/securitylinter-python3-bandit``
