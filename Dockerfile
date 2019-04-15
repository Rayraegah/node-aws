FROM node:latest

RUN apt-get update && apt-get install -y\
	python \
	python-pip \
	libpython-dev \
	unzip \
	zip \
	ruby \
	ruby-bundler

RUN pip install \
      awscli==1.16.140

RUN node -v && \
	python --version && \
	aws --version && \
	ruby -v && \
	bundler --version
