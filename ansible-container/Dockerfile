FROM ubuntu:20.04

RUN apt update && \
  #Install Ansible and other CLI tools:
  apt install software-properties-common -y && \
  apt-add-repository --yes --update ppa:ansible/ansible && \
  apt install -y \
  ansible \
  curl \
  wget \
  zip \
  tree \
  nano \
  vim \
  less

#Install AWS CLI packages:
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install

#Add aliases:
RUN echo "alias ap='ansible-playbook'" >> ~/.bash_aliases && . ~/.bashrc

#Copy AWS CLI credentials:
COPY .aws/ /root/.aws/

WORKDIR /ansible-workdir
