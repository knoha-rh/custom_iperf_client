FROM centos:7
LABEL version=0.1
USER root
RUN yum -y install iperf3
ARG TARGET_NODE
ARG TARGET_PORT=5201
CMD ["/usr/bin/iperf3", "-c", "${TARGET_NODE}", "-p", "${TARGET_PORT}", "-R"]
