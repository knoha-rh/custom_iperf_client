FROM registry.access.redhat.com/ubi8/ubi:8.5

LABEL version=0.1
USER root
RUN yum -y install iperf3
ARG target_node
ARG target_port=5201
CMD iperf3 -c ${target_node} -p ${target_port} -R