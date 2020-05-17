FROM centos:latest
RUN yum -y install curl
ENV SITE_URL http://www.google.com
WORKDIR /data
VOLUME /data
CMD sh -c "curl --insecure -L $SITE_URL > /data/results"
