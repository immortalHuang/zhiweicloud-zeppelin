FROM docker.io/after4u/ubuntu-jdk8
RUN cd /opt
RUN wget http://mirror.bit.edu.cn/apache/zeppelin/zeppelin-0.7.1/zeppelin-0.7.1-bin-all.tgz
RUN tar xvf zeppelin-0.7.1-bin-all.tgz
RUN cd zeppelin-0.7.1-bin-all && bin/zeppelin-daemon.sh start
EXPOSE 8080
