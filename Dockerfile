FROM centos:7
LABEL version=0.1
USER root
RUN yum -y install iperf3

