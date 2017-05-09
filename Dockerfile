FROM docker.io/after4u/ubuntu-jdk8
RUN cd /opt && wget http://mirror.bit.edu.cn/apache/zeppelin/zeppelin-0.7.1/zeppelin-0.7.1-bin-all.tgz && tar xvf zeppelin-0.7.1-bin-all.tgz
RUN /opt/zeppelin-0.7.1-bin-all/bin/zeppelin-daemon.sh start
