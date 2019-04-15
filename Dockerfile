FROM node:latest

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awscli==1.16.140

CMD ["node"]
