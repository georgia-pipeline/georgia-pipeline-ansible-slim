FROM python:3-slim

RUN apt-get update -qy
RUN apt-get install -y python-dev python-pip git sshpass
COPY ["requirements.txt", "./"]
RUN pip install -r requirements.txt
RUN ansible --version
RUN ansible-lint --version
