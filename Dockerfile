FROM ubuntu:14.04
MAINTAINER Oliver W. Laslett <O.Laslett@soton.ac.uk>

# Install depenencies
RUN apt-get update
RUN apt-get install python-dev -y
RUN apt-get install python-pip -y
RUN apt-get install mysql-server -y
RUN apt-get install libmysqlclient-dev -y

RUN pip install TwitterAPI
RUN pip install MySQL-python

# Add source files to the containiner
ADD * twacademia/

# Set up mysql database format
RUN twacademia/set_up_sqltable.sh

