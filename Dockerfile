FROM circleci/ruby:2.3-node

RUN sudo apt-get update && sudo apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awscli==1.16.140
