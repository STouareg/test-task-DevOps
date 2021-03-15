FROM ubuntu:20.04

ARG TERRAFORM_VERSION=0.14.7

RUN apt update && \
  #Install CLI tools:
  apt install -y \
  curl \
  wget \
  zip \
  tree \
  nano \
  vim \
  less 

#Install Terraform
RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN \
	# Unzip
	unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
  rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
	# Move to local bin
	mv terraform /usr/local/bin/ && \
	# Make it executable
	chmod +x /usr/local/bin/terraform && \
	# Check that it's installed
	terraform --version


#Install AWS CLI packages:
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
  unzip awscliv2.zip && \
  ./aws/install

#Add aliases:
RUN echo "alias ti='terraform init'" >> ~/.bash_aliases && . ~/.bashrc && \
  echo "alias tp='terraform plan'" >> ~/.bash_aliases && . ~/.bashrc && \
  echo "alias ta='terraform apply'" >> ~/.bash_aliases && . ~/.bashrc


#Copy AWS CLI credentials:
COPY .aws/ /root/.aws/

WORKDIR /terraform-workdir
