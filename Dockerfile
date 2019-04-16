# Base image
FROM node:latest

# Install dependencies on base image
RUN \
	apt-get update && apt-get install -y \
	curl \
	bzip2 \
	unzip \
	zip \
	build-essential \
	libssl-dev \
	libreadline-dev \
	zlib1g-dev \
	python \
	python-pip \
	libpython-dev

# Build and Install ruby
RUN \
	rm -rf /var/lib/apt/lists/* && \
	curl -L https://github.com/sstephenson/ruby-build/archive/v20180329.tar.gz | tar -zxvf - -C /tmp/ && \
	cd /tmp/ruby-build-* && ./install.sh && cd / && \
	ruby-build -v 2.5.1 /usr/local && rm -rfv /tmp/ruby-build-* && \
	gem install bundler --no-rdoc --no-ri

# Install aws cli
RUN \
	pip install awscli==1.16.140

# Run test commands
RUN \
	node -v && \
	npm -v && \
	python --version && \
	aws --version && \
	ruby -v && \
	bundler --version
