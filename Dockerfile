FROM node:8.9

RUN apt-get update && apt-get install -y\
      python \
      python-pip \
      libpython-dev \
      unzip \
      zip

RUN pip install \
      awsebcli==3.7.4 \
      awscli==1.11.52

CMD ["node"]
