FROM ubuntu:20.04

RUN apt update && \
  apt install software-properties-common -y && \
  apt-add-repository --yes --update ppa:ansible/ansible && \
  apt install -y ansible

RUN apt update && \
  apt install -y \
  curl \
  zip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install