FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

MAINTAINER Patrick Gray <pgrayobx@gmail.com>

ADD environment.yml /tmp/environment.yml
RUN pip install requirements.txt

# might need to run this if you get a funky error
#RUN apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0
