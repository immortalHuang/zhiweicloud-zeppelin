FROM gcr.io/google_containers/exechealthz-amd64:1.2
MAINTAINER James Turnbull "huangmingle@zhiweicloud.com"
ADD zeppelin-0.7.1-bin-all.tgz /opt
RUN cd /opt && mv zeppelin-0.7.1-bin-all zeppelin
ADD jdk-8u131-linux-x64.tar.gz /opt
ENV JAVA_HOME /opt/jdk1.8.0_131
ENV PATH $PATH:$JAVA_HOME/bin
RUN cd /opt/zeppelin && bin/zeppelin-daemon.sh start
RUN while true;do echo helo;done
EXPOSE 8080
