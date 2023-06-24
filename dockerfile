FROM ubuntu:22.04
RUN apt update && apt upgrade -y
RUN apt install curl -y
RUN apt install gnupg -y 
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt install software-properties-common -y
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" -y
RUN apt-get update && apt-get install packer -y
RUN apt install ansible -y