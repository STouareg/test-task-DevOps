FROM ubuntu:20.04

RUN apt update && \
  #Install CLI tools:
  apt install -y \
  curl \
  zip \
  tree \
  nano \
  vim 

#Install Terraform
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - && \
  apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  apt install -y terraform

#Install AWS CLI packages:
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install

#Add aliases:
RUN echo "alias ti='terraform init'" >> ~/.bash_aliases && . ~/.bashrc && \
  echo "alias tp='terraform plan'" >> ~/.bash_aliases && . ~/.bashrc && \
  echo "alias ta='terraform apply'" >> ~/.bash_aliases && . ~/.bashrc

COPY .aws/ /root/.aws/

#Attach volumes:
VOLUME terraform-workdir/
