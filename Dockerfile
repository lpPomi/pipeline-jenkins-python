FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install python python-pip -y

# copy the contend from …/src to the new folder /opt/app
RUN mkdir /opt/app
COPY src/main.py /opt/app/
COPY requirements.txt /opt/app/

# add the dependencies to run the flask Web server
RUN pip install -r /opt/app/requirements.txt

# copy the file to the root
COPY docker-entrypoint.sh /

ENTRYPOINT "/docker-entrypoint.sh"

