FROM million12/nginx:latest
LABEL description="Nginx with NodeJS"

ENV NODE_VERSION=10.15.3

RUN \
  yum install -y \
    gcc-c++ \
    make \
    sudo \
    git && \
  curl -sL https://rpm.nodesource.com/setup_10.x | sudo -E bash - && \
  yum install -y nodejs-${NODE_VERSION} && \
  npm install yarn -g && \
  yum clean all && rm -rf /tmp/yum*

