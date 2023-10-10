ENV ubuntu:focal (ubuntu base image)
#removed
ENV proxy=<> 

RUN apt update -y && apt install -y sosreport && apt install -y wget && apt install -y ca-certificates
RUN apt -y install --reinstall python-setuptools

#still throwing errors on setuptools package not found so download from pip
RUN apt install -y python3-pip
RUN pip install setuptools
