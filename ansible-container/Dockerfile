FROM ubuntu:20.04

RUN apt update && \
  apt install software-properties-common -y && \
  apt-add-repository --yes --update ppa:ansible/ansible && \
  apt install -y ansible

