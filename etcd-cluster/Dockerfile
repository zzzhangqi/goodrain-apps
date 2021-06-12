FROM quay.io/coreos/etcd:latest
ENV ETCDCTL_API=3
COPY rainbond-start.sh /usr/local/bin
RUN chmod +x /usr/local/bin/rainbond-start.sh
VOLUME [ "/etcd-data" ]
CMD /usr/local/bin/rainbond-start.sh