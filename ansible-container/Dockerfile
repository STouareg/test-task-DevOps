FROM ubuntu:20.04

RUN apt update && \
  apt install software-properties-common -y && \
  apt-add-repository --yes --update ppa:ansible/ansible && \
  apt install -y \
  ansible \
  curl \
  zip \
  tree \
  nano \
  vim

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install

RUN echo "alias ap='ansible-playbook'" >> ~/.bash_aliases && . ~/.bashrc